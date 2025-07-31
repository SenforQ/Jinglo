import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'character_detail_page.dart';
import '../services/user_service.dart';
import 'report_page.dart';

class VideoPlayerPage extends StatefulWidget {
  final Map<String, dynamic> videoData;

  const VideoPlayerPage({
    super.key,
    required this.videoData,
  });

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  bool _isLiked = false;
  final List<Map<String, dynamic>> _comments = [];
  bool _isCommentsLoaded = false;
  bool _isLoading = true;
  final TextEditingController _commentController = TextEditingController();
  Future<List<Map<String, dynamic>>>? _commentsFuture;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    _chewieController?.dispose();
    _commentController.dispose();
    super.dispose();
  }

  // 初始化视频播放器
  Future<void> _initializeVideoPlayer() async {
    try {
      final videoPath = widget.videoData['JingloShowVideo'];
      if (videoPath != null) {
        _videoPlayerController = VideoPlayerController.asset(videoPath);
        await _videoPlayerController!.initialize();
        
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController!,
          autoPlay: true,
          looping: true,
          aspectRatio: _videoPlayerController!.value.aspectRatio,
          allowFullScreen: false,
          allowMuting: true,
          showControls: true,
          materialProgressColors: ChewieProgressColors(
            playedColor: const Color(0xFFFF43AB),
            handleColor: const Color(0xFFFF43AB),
            backgroundColor: Colors.grey,
            bufferedColor: Colors.grey.withValues(alpha: 0.5),
          ),
        );
        
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('Error initializing video player: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 点赞功能
  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  // 评论功能
  void _showComments() {
    // 确保评论数据已加载
    if (!_isCommentsLoaded) {
      _loadComments();
    }
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.3,
              maxChildSize: 0.9,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF2F132E),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      // 拖拽指示器
                      Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(top: 12, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      // 标题栏
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            const Text(
                              'Comments',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white24,
                        height: 1,
                      ),
                      // 评论列表
                      Expanded(
                        child: _buildCommentsListForModal(scrollController, setModalState),
                      ),
                                        // 评论输入框
                  _buildCommentInputForModal(setModalState, scrollController),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  // 分享功能
  Future<void> _shareVideo() async {
    try {
      final userName = widget.videoData['JingloNickName'] ?? 'Unknown User';
      final motto = widget.videoData['JingloShowMotto'] ?? '';
      
      String shareText = 'Check out this amazing dance video by $userName!';
      if (motto.isNotEmpty) {
        shareText += '\n\n"$motto"';
      }
      shareText += '\n\n#Dance #Jinglo';
      
      await Share.share(
        shareText,
        subject: 'Amazing Dance Video: $userName',
      );
    } catch (e) {
      debugPrint('Error sharing video: $e');
    }
  }

  // 显示选项菜单
  void _showOptionsMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xFF2F132E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(top: 12, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.report,
                  color: Color(0xFFFF43AB),
                ),
                title: const Text(
                  'Report',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _showReportDialog();
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.block,
                  color: Color(0xFFFF43AB),
                ),
                title: const Text(
                  'Block',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _showBlockConfirmation();
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.visibility_off,
                  color: Color(0xFFFF43AB),
                ),
                title: const Text(
                  'Hide',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _showHideConfirmation();
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  // 显示举报对话框
  void _showReportDialog() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReportPage(
          character: widget.videoData,
        ),
      ),
    );
  }

  // 显示拉黑确认对话框
  void _showBlockConfirmation() {
    final userName = widget.videoData['JingloNickName'] ?? 'this user';
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF2F132E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'Block User',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            'Are you sure you want to block $userName? You won\'t see their content anymore.',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _blockUser();
              },
              child: const Text(
                'Block',
                style: TextStyle(
                  color: Color(0xFFFF43AB),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // 显示屏蔽确认对话框
  void _showHideConfirmation() {
    final userName = widget.videoData['JingloNickName'] ?? 'this user';
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF2F132E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'Hide User',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            'Are you sure you want to hide $userName? Their content will be hidden from your feed.',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _hideUser();
              },
              child: const Text(
                'Hide',
                style: TextStyle(
                  color: Color(0xFFFF43AB),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // 拉黑用户
  Future<void> _blockUser() async {
    final userName = widget.videoData['JingloNickName'] ?? 'this user';
    final userId = widget.videoData['JingloUserName'] ?? '';
    
    debugPrint('Blocking user: userName=$userName, userId=$userId');
    debugPrint('Video data: ${widget.videoData}');
    
    try {
      // 保存到本地存储
      await UserService.blockUser(userId);
      
      // 显示成功提示并返回上一页
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$userName has been blocked'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
        // 返回上一页
        Navigator.pop(context);
      }
    } catch (e) {
      debugPrint('Error blocking user: $e');
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to block user: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // 屏蔽用户
  Future<void> _hideUser() async {
    final userName = widget.videoData['JingloNickName'] ?? 'this user';
    final userId = widget.videoData['JingloUserName'] ?? '';
    
    debugPrint('Hiding user: userName=$userName, userId=$userId');
    debugPrint('Video data: ${widget.videoData}');
    
    try {
      // 保存到本地存储
      await UserService.hideUser(userId);
      
      // 显示成功提示并返回上一页
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$userName has been hidden'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
        // 返回上一页
        Navigator.pop(context);
      }
    } catch (e) {
      debugPrint('Error hiding user: $e');
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to hide user: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // 加载评论
  Future<void> _loadComments() async {
    try {
      final videoId = widget.videoData['JingloShowVideo'] ?? 'unknown_video';
      debugPrint('Loading comments for videoId: $videoId');
      
      final comments = await UserService.getVideoComments(videoId);
      debugPrint('Loaded ${comments.length} comments from storage');
      
      if (mounted) {
        setState(() {
          _comments.clear();
          _comments.addAll(comments);
          _isCommentsLoaded = true;
        });
        debugPrint('Comments updated in UI, total count: ${_comments.length}');
      }
    } catch (e) {
      debugPrint('Error loading comments: $e');
      if (mounted) {
        setState(() {
          _isCommentsLoaded = true;
        });
      }
    }
  }

  // 格式化时间戳
  String _formatTimestamp(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }
  }

  // 处理评论时间显示
  String _getCommentTimestamp(Map<String, dynamic> comment) {
    final timestamp = comment['timestamp'];
    final createdAt = comment['createdAt'];
    
    if (createdAt != null) {
      try {
        final dateTime = DateTime.parse(createdAt);
        return _formatTimestamp(dateTime);
      } catch (e) {
        debugPrint('Error parsing comment timestamp: $e');
      }
    }
    
    return timestamp ?? 'Unknown time';
  }

  // 加载评论的Future方法，用于FutureBuilder
  Future<List<Map<String, dynamic>>> _loadCommentsFuture() async {
    try {
      final videoId = widget.videoData['JingloShowVideo'] ?? 'unknown_video';
      debugPrint('Loading comments for videoId: $videoId (FutureBuilder)');
      
      final comments = await UserService.getVideoComments(videoId);
      debugPrint('Loaded ${comments.length} comments from storage (FutureBuilder)');
      
      // 更新状态
      if (mounted) {
        setState(() {
          _comments.clear();
          _comments.addAll(comments);
          _isCommentsLoaded = true;
        });
      }
      
      return comments;
    } catch (e) {
      debugPrint('Error loading comments (FutureBuilder): $e');
      if (mounted) {
        setState(() {
          _isCommentsLoaded = true;
        });
      }
      return [];
    }
  }

  // 刷新评论数据
  void _refreshComments() {
    setState(() {
      _commentsFuture = _loadCommentsFuture();
    });
  }

  // 构建弹窗中的评论列表
  Widget _buildCommentsListForModal(ScrollController scrollController, StateSetter setModalState) {
    debugPrint('Building modal comments list with ${_comments.length} comments, isLoaded: $_isCommentsLoaded');
    
    return RefreshIndicator(
      onRefresh: () async {
        await _loadComments();
        setModalState(() {}); // 刷新弹窗状态
      },
      color: const Color(0xFFFF43AB),
      backgroundColor: const Color(0xFF2F132E),
      child: !_isCommentsLoaded
          ? ListView(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 100),
                const Center(
                  child: Column(
                    children: [
                      CircularProgressIndicator(
                        color: Color(0xFFFF43AB),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Loading comments...',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : _comments.isEmpty
              ? ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    const SizedBox(height: 100),
                    const Center(
                      child: Text(
                        'No comments yet. Be the first to comment!',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              : ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _comments.length,
                  itemBuilder: (context, index) {
                    final comment = _comments[index];
                    debugPrint('Building modal comment item $index: ${comment['content']}');
                    return _buildCommentItemForModal(comment);
                  },
                ),
    );
  }

  // 构建弹窗中的单个评论项
  Widget _buildCommentItemForModal(Map<String, dynamic> comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFFF43AB),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: _buildAvatarImage(comment['userAvatar']),
            ),
          ),
          const SizedBox(width: 12),
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      comment['userName'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _getCommentTimestamp(comment),
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.6),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  comment['content'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 构建弹窗中的评论输入框
  Widget _buildCommentInputForModal(StateSetter setModalState, ScrollController? scrollController) {
    final TextEditingController modalCommentController = TextEditingController();
    
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2F132E),
        border: Border(
          top: BorderSide(
            color: Colors.white.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // 输入框
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              child: TextField(
                controller: modalCommentController,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                decoration: const InputDecoration(
                  hintText: 'Add a comment...',
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                maxLines: null,
                onSubmitted: (text) async {
                  if (text.trim().isNotEmpty) {
                    final commentText = text.trim();
                    modalCommentController.clear();
                    await _addCommentForModal(commentText, setModalState, scrollController);
                  }
                },
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 发送按钮
          GestureDetector(
            onTap: () async {
              if (modalCommentController.text.trim().isNotEmpty) {
                final commentText = modalCommentController.text.trim();
                modalCommentController.clear();
                await _addCommentForModal(commentText, setModalState, scrollController);
              }
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFFF43AB),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.send,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 弹窗中添加评论
  Future<void> _addCommentForModal(String content, StateSetter setModalState, ScrollController? scrollController) async {
    try {
      // 获取用户信息
      final userInfo = await UserService.getUserInfo();
      final userName = userInfo.name;
      final userAvatar = userInfo.avatar;
      
      // 获取当前时间
      final now = DateTime.now();
      final timestamp = _formatTimestamp(now);
      
      // 创建新评论
      final newComment = {
        'id': now.millisecondsSinceEpoch.toString(),
        'userName': '$userName (my)',
        'userAvatar': userAvatar,
        'content': content,
        'timestamp': timestamp,
        'createdAt': now.toIso8601String(),
        'isMyComment': true,
      };
      
      debugPrint('Adding new comment in modal: $newComment');
      debugPrint('Current comments count before: ${_comments.length}');
      
      // 立即添加到评论列表并更新UI（添加到第一条）
      setState(() {
        _comments.insert(0, newComment);
      });
      
      // 同时更新弹窗状态
      setModalState(() {});
      
      debugPrint('Comments count after adding: ${_comments.length}');
      
      // 保存到本地存储
      await _saveComments();
      debugPrint('Comments saved to storage');
      
      // 自动滚动到顶部
      if (scrollController != null) {
        Future.delayed(const Duration(milliseconds: 50), () {
          if (scrollController.hasClients) {
            scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        });
      }
      
      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Comment posted!'),
            backgroundColor: Color(0xFFFF43AB),
            duration: Duration(seconds: 1),
          ),
        );
        
        // 延迟一下再滚动到最新评论，确保UI已经更新
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted && _comments.isNotEmpty) {
            debugPrint('Comment added successfully in modal, total comments: ${_comments.length}');
          }
        });
      }
    } catch (e) {
      debugPrint('Error in _addCommentForModal: $e');
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to post comment: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // 保存评论
  Future<void> _saveComments() async {
    try {
      final videoId = widget.videoData['JingloShowVideo'] ?? 'unknown_video';
      debugPrint('Saving ${_comments.length} comments for videoId: $videoId');
      await UserService.saveVideoComments(videoId, _comments);
      debugPrint('Comments saved successfully');
    } catch (e) {
      debugPrint('Error saving comments: $e');
    }
  }

  // 添加评论
  Future<void> _addComment(String content) async {
    try {
      // 获取用户信息
      final userInfo = await UserService.getUserInfo();
      final userName = userInfo.name;
      final userAvatar = userInfo.avatar;
      
      // 获取当前时间
      final now = DateTime.now();
      final timestamp = _formatTimestamp(now);
      
      // 创建新评论
      final newComment = {
        'id': now.millisecondsSinceEpoch.toString(),
        'userName': '$userName (my)',
        'userAvatar': userAvatar,
        'content': content,
        'timestamp': timestamp,
        'createdAt': now.toIso8601String(),
        'isMyComment': true,
      };
      
      debugPrint('Adding new comment: $newComment');
      debugPrint('Current comments count before: ${_comments.length}');
      
      // 立即添加到评论列表并更新UI（添加到第一条）
      setState(() {
        _comments.insert(0, newComment);
      });
      
      debugPrint('Comments count after adding: ${_comments.length}');
      
      // 保存到本地存储
      await _saveComments();
      debugPrint('Comments saved to storage');
      
      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Comment posted!'),
            backgroundColor: Color(0xFFFF43AB),
            duration: Duration(seconds: 1),
          ),
        );
        
        // 延迟一下再滚动到最新评论，确保UI已经更新
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted && _comments.isNotEmpty) {
            debugPrint('Comment added successfully, total comments: ${_comments.length}');
          }
        });
      }
    } catch (e) {
      debugPrint('Error in _addComment: $e');
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to post comment: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // 构建头像图片
  Widget _buildAvatarImage(String avatarPath) {
    if (UserService.isLocalFile(avatarPath)) {
      // 本地文件路径
      return FutureBuilder<String>(
        future: UserService.getAbsolutePath(avatarPath),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Image.file(
              File(snapshot.data!),
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: const Color(0xFFFF43AB),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                );
              },
            );
          } else {
            return Container(
              color: const Color(0xFFFF43AB),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 20,
              ),
            );
          }
        },
      );
    } else {
      // 资源文件路径
      return Image.asset(
        avatarPath,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: const Color(0xFFFF43AB),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // 视频播放器
            _buildVideoPlayer(),
            
            // 顶部导航栏
            _buildTopNavigationBar(),
            
            // 右侧交互按钮
            _buildRightSideButtons(),
            
            // 底部用户信息
            _buildBottomUserInfo(),
          ],
        ),
      ),
    );
  }

  // 视频播放器
  Widget _buildVideoPlayer() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: Color(0xFFFF43AB),
        ),
      );
    }
    
    if (_chewieController == null) {
      return Container(
        color: Colors.black,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 64,
              ),
              SizedBox(height: 16),
              Text(
                'Video not available',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
    }
    
    return Chewie(controller: _chewieController!);
  }

  // 顶部导航栏
  Widget _buildTopNavigationBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                _showOptionsMenu(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 右侧交互按钮
  Widget _buildRightSideButtons() {
    return Positioned(
      right: 16,
      bottom: 120,
      child: Column(
        children: [
          // 用户头像
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailPage(
                    character: widget.videoData,
                  ),
                ),
              );
            },
            child: Container(
              width: 48,
              height: 48,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFF43AB),
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  widget.videoData['JingloUserIcon'] ?? 'assets/user_default_20250724.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFFF43AB),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 24,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          
          // 点赞按钮
          GestureDetector(
            onTap: _toggleLike,
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: Image.asset(
                  _isLiked 
                      ? 'assets/icon_heart_pre_20250724.png'
                      : 'assets/icon_heart_nor_20250724.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
          
          // 评论按钮
          GestureDetector(
            onTap: _showComments,
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: Image.asset(
                  'assets/icon_video_comment_20250724.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
          
          // 分享按钮
          GestureDetector(
            onTap: _shareVideo,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Center(
                child: Image.asset(
                  'assets/icon_video_share_20250724.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 底部用户信息
  Widget _buildBottomUserInfo() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 80, // 为右侧按钮留出空间
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withValues(alpha: 0.7),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 用户名
            Text(
              widget.videoData['JingloNickName'] ?? 'Unknown User',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // 座右铭
            Text(
              widget.videoData['JingloShowMotto'] ?? 'No motto available',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  // 构建评论列表
  Widget _buildCommentsList(ScrollController scrollController) {
    debugPrint('Building comments list with ${_comments.length} comments, isLoaded: $_isCommentsLoaded');
    
    return RefreshIndicator(
      onRefresh: _loadComments,
      color: const Color(0xFFFF43AB),
      backgroundColor: const Color(0xFF2F132E),
      child: !_isCommentsLoaded
          ? ListView(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 100),
                const Center(
                  child: Column(
                    children: [
                      CircularProgressIndicator(
                        color: Color(0xFFFF43AB),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Loading comments...',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : _comments.isEmpty
              ? ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    const SizedBox(height: 100),
                    const Center(
                      child: Text(
                        'No comments yet. Be the first to comment!',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              : ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _comments.length,
                  itemBuilder: (context, index) {
                    final comment = _comments[index];
                    debugPrint('Building comment item $index: ${comment['content']}');
                    return _buildCommentItem(comment);
                  },
                ),
    );
  }

  // 构建单个评论项
  Widget _buildCommentItem(Map<String, dynamic> comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFFF43AB),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: _buildAvatarImage(comment['userAvatar']),
            ),
          ),
          const SizedBox(width: 12),
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      comment['userName'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _getCommentTimestamp(comment),
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.6),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  comment['content'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 构建评论输入框
  Widget _buildCommentInput() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2F132E),
        border: Border(
          top: BorderSide(
            color: Colors.white.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // 输入框
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              child: TextField(
                controller: _commentController,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                decoration: const InputDecoration(
                  hintText: 'Add a comment...',
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                maxLines: null,
                onSubmitted: (text) async {
                  if (text.trim().isNotEmpty) {
                    final commentText = text.trim();
                    _commentController.clear();
                    await _addComment(commentText);
                  }
                },
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 发送按钮
          GestureDetector(
            onTap: () async {
              if (_commentController.text.trim().isNotEmpty) {
                final commentText = _commentController.text.trim();
                _commentController.clear();
                await _addComment(commentText);
              }
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFFF43AB),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.send,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 