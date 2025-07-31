import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../services/user_service.dart';
import 'report_page.dart';
import 'character_chat_page.dart';

class CharacterDetailPage extends StatefulWidget {
  final Map<String, dynamic> character;

  const CharacterDetailPage({
    super.key,
    required this.character,
  });

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  bool _isFollowed = false;
  int _currentFollowerCount = 0;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  // 初始化数据
  Future<void> _initializeData() async {
    await _checkFollowStatus();
    await _initializeFollowerCount();
  }

  // 检查关注状态
  Future<void> _checkFollowStatus() async {
    final userId = widget.character['JingloUserName'] ?? '';
    final isFollowed = await UserService.isUserFollowed(userId);
    setState(() {
      _isFollowed = isFollowed;
    });
  }

  // 初始化粉丝数
  Future<void> _initializeFollowerCount() async {
    final baseFollowerCount = widget.character['JingloShowFollowNum'] ?? 0;
    final userId = widget.character['JingloUserName'] ?? '';
    final isFollowed = await UserService.isUserFollowed(userId);
    
    // 如果用户已经关注了这个角色，粉丝数需要+1
    final adjustedFollowerCount = isFollowed ? baseFollowerCount + 1 : baseFollowerCount;
    
    setState(() {
      _currentFollowerCount = adjustedFollowerCount;
    });
    
    debugPrint('Initialized follower count: $baseFollowerCount -> $_currentFollowerCount (followed: $isFollowed)');
  }

  // 切换关注状态
  Future<void> _toggleFollow() async {
    final userId = widget.character['JingloUserName'] ?? '';
    
    if (_isFollowed) {
      // 取消关注
      await UserService.unfollowUser(userId);
      setState(() {
        _isFollowed = false;
        _currentFollowerCount = _currentFollowerCount - 1; // 粉丝数-1
      });
      debugPrint('Unfollowed user: $userId, new follower count: $_currentFollowerCount');
    } else {
      // 关注
      await UserService.followUser(userId);
      setState(() {
        _isFollowed = true;
        _currentFollowerCount = _currentFollowerCount + 1; // 粉丝数+1
      });
      debugPrint('Followed user: $userId, new follower count: $_currentFollowerCount');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/content_background_20250724.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 顶部导航栏
              _buildTopNavigationBar(context),
              // 主要内容区域
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        // 角色头像
                        _buildCharacterAvatar(),
                        const SizedBox(height: 20),
                        // 角色名称
                        _buildCharacterName(),
                        const SizedBox(height: 16),
                        // 粉丝数
                        _buildFollowerCount(),
                        const SizedBox(height: 16),
                        // 角色座右铭
                        _buildCharacterMotto(),
                        const SizedBox(height: 24),
                        // 个人相册集
                        _buildPhotoGallery(),
                        const SizedBox(height: 40),
                        // Chat Now 按钮
                        _buildChatNowButton(),
                        const SizedBox(height: 100), // 为底部tabbar留出空间
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 顶部导航栏
  Widget _buildTopNavigationBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const Spacer(),
          const Text(
            'Character Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              // 这里可以添加三个点按钮的点击事件
              _showOptionsMenu(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(20),
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
    );
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
                  Icons.share,
                  color: Color(0xFFFF43AB),
                ),
                title: const Text(
                  'Share',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _shareCharacter();
                },
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReportPage(
                        character: widget.character,
                      ),
                    ),
                  );
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

  // 分享角色信息
  Future<void> _shareCharacter() async {
    try {
      // 获取角色信息
      final characterName = widget.character['JingloNickName'] ?? 'Unknown Character';
      
      // 分享文本内容
      String shareText = 'Check out this amazing dancer: $characterName! 🕺💃';
      
      // 分享文本内容
      await Share.share(
        shareText,
        subject: 'Amazing Dancer: $characterName',
      );
    } catch (e) {
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to share: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  // 显示拉黑确认对话框
  void _showBlockConfirmation() {
    final characterName = widget.character['JingloNickName'] ?? 'this user';
    
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
            'Are you sure you want to block $characterName? You won\'t see their content anymore.',
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
    final characterName = widget.character['JingloNickName'] ?? 'this user';
    
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
            'Are you sure you want to hide $characterName? Their content will be hidden from your feed.',
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
    final characterName = widget.character['JingloNickName'] ?? 'this user';
    final userId = widget.character['WeevaUserName'] ?? '';
    
    try {
      // 保存到本地存储
      await UserService.blockUser(userId);
      
      // 显示成功提示并返回上一页
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$characterName has been blocked'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
        // 返回上一页
        Navigator.pop(context);
      }
    } catch (e) {
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
    final characterName = widget.character['JingloNickName'] ?? 'this user';
    final userId = widget.character['WeevaUserName'] ?? '';
    
    try {
      // 保存到本地存储
      await UserService.hideUser(userId);
      
      // 显示成功提示并返回上一页
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$characterName has been hidden'),
            backgroundColor: const Color(0xFFFF43AB),
            duration: const Duration(seconds: 2),
          ),
        );
        // 返回上一页
        Navigator.pop(context);
      }
    } catch (e) {
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

  // 角色头像
  Widget _buildCharacterAvatar() {
    return Center(
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFFFF43AB),
            width: 4,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFF43AB).withValues(alpha: 0.3),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            widget.character['JingloUserIcon'],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  // 角色名称
  Widget _buildCharacterName() {
    return Center(
      child:         Text(
          widget.character['JingloNickName'],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  // 粉丝数和关注按钮
  Widget _buildFollowerCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 粉丝数
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Text(
            '$_currentFollowerCount Followers',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 16),
        // 关注按钮
        GestureDetector(
          onTap: _toggleFollow,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: _isFollowed 
                  ? Colors.white.withValues(alpha: 0.2)
                  : const Color(0xFFFF43AB),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: _isFollowed 
                    ? Colors.white.withValues(alpha: 0.3)
                    : const Color(0xFFFF43AB),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _isFollowed ? Icons.check : Icons.add,
                  color: _isFollowed ? Colors.white : Colors.white,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  _isFollowed ? 'Following' : 'Follow',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // 角色座右铭
  Widget _buildCharacterMotto() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFFF43AB).withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Motto',
            style: TextStyle(
              color: Color(0xFFFF43AB),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
                  Text(
          widget.character['JingloShowMotto'],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // 个人相册集
  Widget _buildPhotoGallery() {
          final List<dynamic> photoArray = widget.character['JingloShowPhotoArray'];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Photo Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          itemCount: photoArray.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(photoArray[index]),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  // Chat Now 按钮
  Widget _buildChatNowButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterChatPage(
              character: widget.character,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFF43AB), Color(0xFFFF6BC7)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFF43AB).withValues(alpha: 0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Chat Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
} 