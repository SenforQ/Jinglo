import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';
import '../services/user_service.dart';
import 'character_detail_page.dart';
import 'video_player_page.dart';
import 'image_detail_page.dart';
import 'report_page.dart';
import 'dart:io';

class DanceCirclePage extends StatefulWidget {
  const DanceCirclePage({super.key});

  @override
  State<DanceCirclePage> createState() => _DanceCirclePageState();
}

class _DanceCirclePageState extends State<DanceCirclePage> {
  List<Map<String, dynamic>> _characterData = [];
  List<Map<String, dynamic>> _sortedCharacterData = [];
  Map<String, dynamic>? _randomCharacter;
  bool _isLoading = true;
  Set<String> _likedPosts = {};
  Map<String, List<Map<String, dynamic>>> _comments = {};
  Map<String, bool> _commentsLoaded = {};
  StreamSubscription<String>? _userActionSubscription;

  @override
  void initState() {
    super.initState();
    _loadCharacterPhotos();
    _loadLikedPosts();
    _setupUserActionListener();
  }

  // 加载角色照片
  Future<void> _loadCharacterPhotos() async {
    try {
      setState(() {
        _isLoading = true;
      });

      // 读取JSON文件
      final jsonString = await DefaultAssetBundle.of(context).loadString('assets/figure_20250728.json');
      final jsonData = json.decode(jsonString) as Map<String, dynamic>;
      final List<dynamic> characters = jsonData['characters'] ?? [];

      // 过滤掉被拉黑和屏蔽的用户
      final filteredCharacters = await UserService.filterUsers(characters.cast<Map<String, dynamic>>());

      debugPrint('Loaded ${characters.length} characters from JSON');
      debugPrint('Filtered to ${filteredCharacters.length} characters');

      // 为每个角色随机选择一张照片
      final List<Map<String, dynamic>> characterData = [];
      final random = Random();
      
      for (final character in filteredCharacters) {
        final List<dynamic> photoArray = character['JingloShowPhotoArray'] ?? [];
        if (photoArray.isNotEmpty) {
          // 随机选择一张照片
          final randomIndex = random.nextInt(photoArray.length);
          final selectedPhoto = photoArray[randomIndex];
          
          // 保存角色信息和选中的照片
          characterData.add({
            'character': character,
            'selectedPhoto': selectedPhoto,
          });
        }
      }
      
      // 随机选择一个角色用于Popular Activity
      if (characterData.isNotEmpty) {
        final randomIndex = random.nextInt(characterData.length);
        setState(() {
          _randomCharacter = characterData[randomIndex]['character'];
        });
      }
      
      // 生成排序后的数据（倒序 + 时间排序）
      _generateSortedData(characterData);
      
      setState(() {
        _characterData = characterData;
        _isLoading = false;
      });
      
      debugPrint('Loaded ${_characterData.length} character photos');
    } catch (e) {
      debugPrint('Error loading character photos: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F132E),
      body: Stack(
        children: [
          // 背景图片 - 从屏幕y=0位置开始，高度自适应
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/dance_background_20250724.png',
              fit: BoxFit.cover,
            ),
          ),
          // 原有内容布局
          SafeArea(
            child: Column(
              children: [
                // 顶部图片区域 - 距离状态栏8px
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    'assets/img_circle_title_20250731.png',
                    width: 160,
                    height: 44,
                  ),
                ),
                // 可滚动内容区域
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                        const SizedBox(height: 4),
                        // Follow Dancer 图片
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Image.asset(
                            'assets/img_follow_dancer_20250731.png',
                            width: 122,
                            height: 30,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                                                // 角色照片展示区域
                        _isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                color: Colors.white,
                                ),
                              )
                            : _buildPhotoGallery(),
                        const SizedBox(height: 16),
                        // Popular Activities 图片
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Image.asset(
                            'assets/img_popular_activities_20250731.png',
                            width: 145,
                            height: 30,
                          ),
                        ),
                        const SizedBox(height: 6),
                        // 渐变背景View
                        GestureDetector(
                          onTap: () {
                            if (_randomCharacter != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VideoPlayerPage(
                                    videoData: _randomCharacter!,
                                  ),
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 143,
                            margin: const EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF36A5),
                                  Color(0xFFFFB4DD),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: _buildPopularActivityContent(),
              ),
            ),
            const SizedBox(height: 20),
                        // Recommend 图片
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Image.asset(
                            'assets/img_reconmend_20250731.png',
                            width: 108,
                            height: 30,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // TableView
                        _buildTableView(),
                        const SizedBox(height: 100), // 为底部导航栏留出空间
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 构建照片画廊
  Widget _buildPhotoGallery() {
    return Container(
      height: 109,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _characterData.length,
        itemBuilder: (context, index) {
          final characterData = _characterData[index];
          final character = characterData['character'];
          final selectedPhoto = characterData['selectedPhoto'];
          
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailPage(
                    character: character,
                  ),
                ),
              );
            },
            child: Container(
              width: 86,
              margin: EdgeInsets.only(
                right: index == _characterData.length - 1 ? 0.0 : 12.0,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  selectedPhoto,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 86,
                      height: 109,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF43AB).withValues(alpha: 0.3),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Icon(
                        Icons.image,
                        color: Colors.white,
                        size: 32,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // 生成排序后的数据
  void _generateSortedData(List<Map<String, dynamic>> characterData) {
    final random = Random();
    final baseDate = DateTime(2025, 7, 28); // 基准日期 20250728
    
    final List<Map<String, dynamic>> sortedData = [];
    
    for (int i = 0; i < characterData.length; i++) {
      // 倒序排列
      final originalIndex = characterData.length - 1 - i;
      final character = characterData[originalIndex];
      
      // 生成随机时间：1-24小时，随机分钟
      final randomHours = random.nextInt(24) + 1; // 1-24小时
      final randomMinutes = random.nextInt(60); // 0-59分钟
      final postTime = baseDate.subtract(Duration(hours: randomHours, minutes: randomMinutes));
      
      sortedData.add({
        'character': character['character'],
        'selectedPhoto': character['selectedPhoto'],
        'postTime': postTime,
      });
    }
    
    // 按时间排序（最新的在前）
    sortedData.sort((a, b) => b['postTime'].compareTo(a['postTime']));
    
    setState(() {
      _sortedCharacterData = sortedData;
    });
    
    debugPrint('Generated ${_sortedCharacterData.length} sorted items');
  }

  @override
  void dispose() {
    _userActionSubscription?.cancel();
    super.dispose();
  }

  // 设置用户操作监听器
  void _setupUserActionListener() {
    _userActionSubscription = UserService.userActionStream.listen((action) {
      debugPrint('DanceCirclePage received user action: $action');
      if (action == 'user_blocked' || action == 'user_hidden') {
        debugPrint('DanceCirclePage refreshing data after user action');
        _refreshData();
      }
    });
  }

  // 刷新数据
  Future<void> _refreshData() async {
    debugPrint('Refreshing dance circle data');
    setState(() {
      _isLoading = true;
    });
    
    // 重新加载角色数据
    await _loadCharacterPhotos();
    
    setState(() {
      _isLoading = false;
    });
  }

  // 加载点赞状态
  Future<void> _loadLikedPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = prefs.getString('liked_posts') ?? '[]';
      final List<dynamic> likedPostsList = json.decode(likedPostsJson);
      setState(() {
        _likedPosts = Set<String>.from(likedPostsList);
      });
      debugPrint('Loaded ${_likedPosts.length} liked posts');
    } catch (e) {
      debugPrint('Error loading liked posts: $e');
    }
  }

  // 保存点赞状态
  Future<void> _saveLikedPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = json.encode(_likedPosts.toList());
      await prefs.setString('liked_posts', likedPostsJson);
      debugPrint('Saved ${_likedPosts.length} liked posts');
    } catch (e) {
      debugPrint('Error saving liked posts: $e');
    }
  }

  // 切换点赞状态
  Future<void> _toggleLike(String postId) async {
    setState(() {
      if (_likedPosts.contains(postId)) {
        _likedPosts.remove(postId);
        debugPrint('Unliked post: $postId');
      } else {
        _likedPosts.add(postId);
        debugPrint('Liked post: $postId');
      }
    });
    await _saveLikedPosts();
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

  // 加载评论
  Future<void> _loadComments(String postId) async {
    try {
      debugPrint('Loading comments for postId: $postId');
      
      final comments = await UserService.getVideoComments(postId);
      debugPrint('Loaded ${comments.length} comments from storage for postId: $postId');
      
      if (mounted) {
        setState(() {
          _comments[postId] = comments;
          _commentsLoaded[postId] = true;
        });
        debugPrint('Comments updated in UI for postId: $postId, total count: ${comments.length}');
      }
    } catch (e) {
      debugPrint('Error loading comments for postId: $postId: $e');
      if (mounted) {
        setState(() {
          _commentsLoaded[postId] = true;
        });
      }
    }
  }

  // 保存评论
  Future<void> _saveComments(String postId) async {
    try {
      final comments = _comments[postId] ?? [];
      debugPrint('Saving ${comments.length} comments for postId: $postId');
      await UserService.saveVideoComments(postId, comments);
      debugPrint('Comments saved successfully for postId: $postId');
    } catch (e) {
      debugPrint('Error saving comments for postId: $postId: $e');
    }
  }

  // 添加评论
  Future<void> _addComment(String postId, String content, StateSetter setModalState, ScrollController? scrollController) async {
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
      
      debugPrint('Adding new comment for postId: $postId: $newComment');
      debugPrint('Current comments count before: ${_comments[postId]?.length ?? 0}');
      
      // 立即添加到评论列表并更新UI（添加到第一条）
      setState(() {
        if (_comments[postId] == null) {
          _comments[postId] = [];
        }
        _comments[postId]!.insert(0, newComment);
      });
      
      // 同时更新弹窗状态
      setModalState(() {});
      
      debugPrint('Comments count after adding: ${_comments[postId]?.length ?? 0}');
      
      // 保存到本地存储
      await _saveComments(postId);
      debugPrint('Comments saved to storage for postId: $postId');
      
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
          if (mounted && (_comments[postId]?.isNotEmpty ?? false)) {
            debugPrint('Comment added successfully for postId: $postId, total comments: ${_comments[postId]?.length ?? 0}');
          }
        });
      }
    } catch (e) {
      debugPrint('Error in _addComment for postId: $postId: $e');
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

  // 显示评论弹窗
  void _showComments(String postId) {
    // 确保评论数据已加载
    if (!(_commentsLoaded[postId] ?? false)) {
      _loadComments(postId);
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
                        child: _buildCommentsListForModal(postId, scrollController, setModalState),
                      ),
                      // 评论输入框
                      _buildCommentInputForModal(postId, setModalState, scrollController),
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

  // 构建弹窗中的评论列表
  Widget _buildCommentsListForModal(String postId, ScrollController scrollController, StateSetter setModalState) {
    final comments = _comments[postId] ?? [];
    final isLoaded = _commentsLoaded[postId] ?? false;
    
    debugPrint('Building modal comments list for postId: $postId with ${comments.length} comments, isLoaded: $isLoaded');
    
    return RefreshIndicator(
      onRefresh: () async {
        await _loadComments(postId);
        setModalState(() {}); // 刷新弹窗状态
      },
      color: const Color(0xFFFF43AB),
      backgroundColor: const Color(0xFF2F132E),
      child: !isLoaded
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
          : comments.isEmpty
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
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    final comment = comments[index];
                    debugPrint('Building modal comment item $index for postId: $postId: ${comment['content']}');
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
  Widget _buildCommentInputForModal(String postId, StateSetter setModalState, ScrollController? scrollController) {
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
                    await _addComment(postId, commentText, setModalState, scrollController);
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
                await _addComment(postId, commentText, setModalState, scrollController);
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

  // 构建Popular Activity内容
  Widget _buildPopularActivityContent() {
    if (_randomCharacter == null) {
      return const SizedBox.shrink();
    }

    final List<dynamic> photoArray = _randomCharacter!['JingloShowPhotoArray'] ?? [];
    final random = Random();
    final selectedPhoto = photoArray.isNotEmpty 
        ? photoArray[random.nextInt(photoArray.length)]
        : 'assets/user_default_20250724.png';

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          // 角色图片
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              selectedPhoto,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 32,
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 8.0),
          // 文字内容
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                'Interpret your summer with dance!',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 构建TableView
  Widget _buildTableView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _sortedCharacterData.length,
      itemBuilder: (context, index) {
        final item = _sortedCharacterData[index];
        final character = item['character'];
        final selectedPhoto = item['selectedPhoto'];
        final postTime = item['postTime'] as DateTime;
        
        return Container(
          width: double.infinity,
          height: 308,
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: const Color(0xFF591D47),
            borderRadius: BorderRadius.circular(20),
          ),
          child: _buildTableViewCell(character, selectedPhoto, postTime),
        );
      },
    );
  }

  // 构建TableView Cell
  Widget _buildTableViewCell(Map<String, dynamic> character, String selectedPhoto, DateTime postTime) {
    return FutureBuilder<bool>(
      future: UserService.isUserFollowed(character['JingloUserName'] ?? ''),
      builder: (context, snapshot) {
        final isFollowed = snapshot.data ?? false;
        
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                                // 用户信息行
                  Row(
                    children: [
                      // 用户头像
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CharacterDetailPage(
                                character: character,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Image.asset(
                              character['JingloUserIcon'] ?? 'assets/user_default_20250724.png',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.white.withValues(alpha: 0.3),
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                  const SizedBox(width: 12.0),
                  // 用户信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          character['JingloNickName'] ?? 'Unknown',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          _formatTime(postTime),
                          style: const TextStyle(
                        color: Colors.white70,
                            fontSize: 12,
                      ),
                    ),
                  ],
                    ),
                  ),
                  // 关注按钮
                  GestureDetector(
                    onTap: () => _toggleFollow(character['JingloUserName'] ?? ''),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: isFollowed 
                            ? Colors.white.withValues(alpha: 0.3)
                            : Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isFollowed 
                              ? Colors.white.withValues(alpha: 0.5)
                              : Colors.white.withValues(alpha: 0.3)
                        ),
                      ),
                      child: Text(
                        isFollowed ? 'Following' : 'Follow',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                ),
              ),
            ),
          ],
              ),
              const SizedBox(height: 12.0),
              // 内容文字
              Text(
                character['JingloShowMotto'] ?? 'No content available',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.4,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12.0),
                              // 图片
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageDetailPage(
                            imagePath: selectedPhoto,
                            userName: character['JingloNickName'] ?? 'Unknown User',
                            userMotto: character['JingloShowMotto'] ?? '',
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        selectedPhoto,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.white.withValues(alpha: 0.2),
                            child: const Icon(
                              Icons.image,
                              color: Colors.white,
                              size: 48,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 12.0),
              // 互动按钮
              Row(
                children: [
                  _buildLikeButton(character['JingloUserName'] ?? ''),
                  const SizedBox(width: 16),
                  _buildCommentButton(character['JingloUserName'] ?? ''),
                  const SizedBox(width: 16),
                  _buildShareButton(character['JingloUserName'] ?? ''),
                  const Spacer(),
                  _buildReportButton(character),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // 构建点赞按钮
  Widget _buildLikeButton(String postId) {
    final isLiked = _likedPosts.contains(postId);
    
    return GestureDetector(
      onTap: () => _toggleLike(postId),
      child: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : Colors.white,
        size: 20,
      ),
    );
  }

  // 构建评论按钮
  Widget _buildCommentButton(String postId) {
    return GestureDetector(
      onTap: () {
        _showComments(postId);
      },
      child: const Icon(
        Icons.chat_bubble_outline,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  // 构建分享按钮
  Widget _buildShareButton(String postId) {
    return GestureDetector(
      onTap: () {
        _shareCharacter(postId);
      },
      child: const Icon(
        Icons.share,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  // 构建举报按钮
  Widget _buildReportButton(Map<String, dynamic> character) {
    return GestureDetector(
      onTap: () {
        _showOptionsMenu(character);
      },
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.2),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.more_horiz,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }

  // 显示选项菜单
  void _showOptionsMenu(Map<String, dynamic> character) {
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
                  _showReportDialog(character);
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
                  _showBlockConfirmation(character);
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
                  _showHideConfirmation(character);
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
  void _showReportDialog(Map<String, dynamic> character) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReportPage(
          character: character,
        ),
      ),
    );
  }

  // 显示拉黑确认对话框
  void _showBlockConfirmation(Map<String, dynamic> character) {
    final userName = character['JingloNickName'] ?? 'this user';
    
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
                _blockUser(character);
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
  void _showHideConfirmation(Map<String, dynamic> character) {
    final userName = character['JingloNickName'] ?? 'this user';
    
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
                _hideUser(character);
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
  Future<void> _blockUser(Map<String, dynamic> character) async {
    final userName = character['JingloNickName'] ?? 'this user';
    final userId = character['JingloUserName'] ?? '';
    
    debugPrint('Blocking user: userName=$userName, userId=$userId');
    debugPrint('Character data: $character');
    
    try {
      // 保存到本地存储
      await UserService.blockUser(userId);
      
      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$userName has been blocked'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
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
  Future<void> _hideUser(Map<String, dynamic> character) async {
    final userName = character['JingloNickName'] ?? 'this user';
    final userId = character['JingloUserName'] ?? '';
    
    debugPrint('Hiding user: userName=$userName, userId=$userId');
    debugPrint('Character data: $character');
    
    try {
      // 保存到本地存储
      await UserService.hideUser(userId);
      
      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$userName has been hidden'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
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

  // 分享角色信息
  Future<void> _shareCharacter(String postId) async {
    try {
      // 找到对应的角色数据
      final characterData = _sortedCharacterData.firstWhere(
        (item) => item['character']['JingloUserName'] == postId,
        orElse: () => <String, dynamic>{},
      );
      
      if (characterData.isEmpty) {
        debugPrint('Character data not found for postId: $postId');
        return;
      }
      
      final character = characterData['character'] as Map<String, dynamic>;
      final userName = character['JingloNickName'] ?? 'Unknown User';
      final userMotto = character['JingloShowMotto'] ?? '';
      final userIcon = character['JingloUserIcon'] ?? '';
      
      // 构建分享文本
      String shareText = 'Check out this amazing dancer: $userName!';
      if (userMotto.isNotEmpty) {
        shareText += '\n\n"$userMotto"';
      }
      shareText += '\n\n#Dance #Jinglo #DanceCommunity';
      
      // 构建分享标题
      final shareSubject = 'Amazing Dancer: $userName';
      
      debugPrint('Sharing character: $userName');
      debugPrint('Share text: $shareText');
      debugPrint('User icon: $userIcon');
      
      // 调用iOS原生分享
      await Share.share(
        shareText,
        subject: shareSubject,
      );
      
      // 显示成功提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Shared $userName\'s profile!'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      debugPrint('Error sharing character: $e');
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to share: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // 格式化时间
  String _formatTime(DateTime time) {
    // 格式化为 yyyy-mm-dd HH:MM
    final year = time.year.toString();
    final month = time.month.toString().padLeft(2, '0');
    final day = time.day.toString().padLeft(2, '0');
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    
    return '$year-$month-$day $hour:$minute';
  }

  // 切换关注状态
  Future<void> _toggleFollow(String userId) async {
    if (userId.isEmpty) return;
    
    final isFollowed = await UserService.isUserFollowed(userId);
    
    if (isFollowed) {
      // 取消关注
      await UserService.unfollowUser(userId);
      debugPrint('Unfollowed user: $userId');
    } else {
      // 关注
      await UserService.followUser(userId);
      debugPrint('Followed user: $userId');
    }
    
    // 刷新TableView以更新关注状态
    setState(() {});
  }

  // 构建功能卡片
  Widget _buildFeatureCard(String title, String description) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFFF43AB).withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
} 