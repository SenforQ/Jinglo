import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:async';
import '../services/user_service.dart';
import 'character_detail_page.dart';
import 'video_player_page.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Popping';
  Map<String, dynamic>? selectedCharacter;
  bool isLiked = false; // 点赞状态
  List<Map<String, dynamic>> collectionItems = []; // CollectionView数据
  StreamSubscription<String>? _userActionSubscription;

  final List<String> danceCategories = ['Hiphop', 'Popping', 'Jazz', 'Afro'];

  @override
  void initState() {
    super.initState();
    _loadRandomCharacter();
    _loadCollectionData();
    _setupUserActionListener();
  }

  @override
  void dispose() {
    _userActionSubscription?.cancel();
    super.dispose();
  }

  // 设置用户操作监听器
  void _setupUserActionListener() {
    _userActionSubscription = UserService.userActionStream.listen((action) {
      debugPrint('HomePage received user action: $action');
      if (action == 'user_blocked' || action == 'user_hidden') {
        // 用户被拉黑或屏蔽，刷新数据
        _refreshData();
      }
    });
  }

  // 刷新所有数据
  Future<void> _refreshData() async {
    debugPrint('HomePage refreshing data after user action');
    if (mounted) {
      setState(() {
        // 清空当前数据，显示加载状态
        selectedCharacter = null;
        collectionItems = [];
      });
    }
    await _loadRandomCharacter();
    await _loadCollectionData();
  }

  // 加载随机角色数据
  Future<void> _loadRandomCharacter() async {
    try {
      // 读取JSON文件
      final String jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/figure_20250728.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> characters = jsonData['characters'];
      
      debugPrint('Loaded ${characters.length} characters from figure_20250728.json');
      
      // 过滤掉被拉黑和屏蔽的用户
      final List<Map<String, dynamic>> filteredCharacters = 
          await UserService.filterUsers(characters.cast<Map<String, dynamic>>());
      
      debugPrint('Filtered random characters to ${filteredCharacters.length} characters');
      
      // 如果没有可用角色，显示默认内容
      if (filteredCharacters.isEmpty) {
        debugPrint('No available random characters after filtering');
        setState(() {
          selectedCharacter = null;
        });
        return;
      }
      
      // 随机选择一个角色
      final random = Random();
      final randomIndex = random.nextInt(filteredCharacters.length);
      final character = filteredCharacters[randomIndex];
      
      debugPrint('Selected random character: ${character['JingloNickName']} (${character['JingloUserName']})');
      
      setState(() {
        selectedCharacter = character;
      });
    } catch (e) {
      debugPrint('Error loading character data: $e');
    }
  }

  // 加载CollectionView数据
  Future<void> _loadCollectionData() async {
    try {
      // 读取JSON文件
      final String jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/home_people.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> characters = jsonData['characters'];
      
      debugPrint('Loaded ${characters.length} characters from home_people.json');
      
      // 过滤掉被拉黑和屏蔽的用户
      final List<Map<String, dynamic>> filteredCharacters = 
          await UserService.filterUsers(characters.cast<Map<String, dynamic>>());
      
      debugPrint('Filtered to ${filteredCharacters.length} characters');
      
      if (mounted) {
        setState(() {
          collectionItems = filteredCharacters;
        });
        debugPrint('HomePage collection items updated: ${collectionItems.length} items');
      }
    } catch (e) {
      debugPrint('Error loading collection data: $e');
      if (mounted) {
        setState(() {
          collectionItems = [];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/content_background_20250724.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // 顶部导航栏区域
            _buildTopNavigationBar(),
            // 主要内容区域（ScrollView）
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      // 导航栏下方图片
                      _buildTopImage(),
                      const SizedBox(height: 16),
                      // 角色卡片下方的图片
                      _buildBottomImage(),
                      const SizedBox(height: 16),
                      // CollectionView
                      _buildCollectionView(),
                      const SizedBox(height: 20 + 56 + 12 + 72),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 顶部导航栏
  Widget _buildTopNavigationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
      child: Row(
        children: [
          // 搜索栏
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 16),
                    Icon(
                      Icons.search,
                      color: Colors.white70,
                      size: 20,
                    ),
                    SizedBox(width: 12),
                                         Text(
                       'Search character name...',
                       style: TextStyle(
                         color: Colors.white70,
                         fontSize: 16,
                       ),
                     ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 导航栏下方图片
  Widget _buildTopImage() {
    return Center(
      child: Stack(
        children: [
          // 背景图片
          Image.asset(
            'assets/img_home_popular_post_20250724.png',
            width: 296,
            height: 412,
            fit: BoxFit.contain,
          ),
          // 角色数据展示区域
          if (selectedCharacter != null)
            Positioned(
              top: 61, // 距离背景图片61px
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CharacterDetailPage(
                          character: selectedCharacter!,
                        ),
                      ),
                    );
                  },
                  child: _buildCharacterContent(),
                ),
              ),
            )
          else
            // 没有可用角色时的默认显示
            Positioned(
              top: 61,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 270,
                  height: 332,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'No available content',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // 构建角色内容
  Widget _buildCharacterContent() {
    return SizedBox(
      width: 270,
      height: 332,
      child: Stack(
        children: [
          // 角色背景图片
          Container(
            width: 270,
            height: 332,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(selectedCharacter!['JingloShowPhoto']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 渐变遮罩层
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 270,
              height: 166,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF000000).withValues(alpha: 0),
                    const Color(0xFF000000).withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
          ),
          // 内容信息
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Learn the basic K-pop moves in 3 minutes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    // 用户头像
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFFF43AB),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          selectedCharacter!['JingloUserIcon'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    // 用户信息
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedCharacter!['JingloNickName'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            selectedCharacter!['JingloShowMotto'],
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    // 点赞按钮
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withValues(alpha: 0.2),
                        ),
                        child: Center(
                          child: Image.asset(
                            isLiked 
                                ? 'assets/icon_heart_pre_20250724.png'
                                : 'assets/icon_heart_nor_20250724.png',
                            width: 27,
                            height: 27,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 角色卡片下方的图片
  Widget _buildBottomImage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Image.asset(
          'assets/hiphop_nor_20250724.png',
          width: 79,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // CollectionView
  Widget _buildCollectionView() {
    debugPrint('Building CollectionView with ${collectionItems.length} items');
    
    if (collectionItems.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final itemWidth = (screenWidth - 32 - 11) / 2.0; // 屏幕宽度 - 32 - 11 / 2.0
        
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11,
            mainAxisSpacing: 16,
            childAspectRatio: itemWidth / 210, // 宽度/高度
          ),
          itemCount: collectionItems.length,
          itemBuilder: (context, index) {
            if (index >= collectionItems.length) {
              return const SizedBox.shrink();
            }
            final item = collectionItems[index];
            debugPrint('Building item $index: ${item['JingloNickName']} - ${item['JingloShowPhoto']}');
            return _buildCollectionItem(item);
          },
        );
      },
    );
  }

  // CollectionView单个item
  Widget _buildCollectionItem(Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerPage(
              videoData: item,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF591C47),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFFF43AB),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            // 视频封面图区域
            Container(
              height: 150,
              margin: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    // 背景图片
                    Positioned.fill(
                      child: Image.asset(
                        item['JingloShowPhoto'] ?? 'assets/user_default_20250724.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          debugPrint('Error loading image: ${item['JingloShowPhoto']}');
                          return Container(
                            color: const Color(0xFF591C47),
                            child: const Center(
                              child: Icon(
                                Icons.image,
                                color: Colors.white54,
                                size: 48,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // 播放按钮
                    Center(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.6),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                    // 用户信息（左图右文）
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // 用户头像
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFFFF43AB),
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item['JingloUserIcon'] ?? 'assets/user_default_20250724.png',
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  debugPrint('Error loading avatar: ${item['JingloUserIcon']}');
                                  return Container(
                                    color: const Color(0xFFFF43AB),
                                    child: const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          // 用户名
                          Flexible(
                            child: Text(
                              item['JingloNickName'] ?? 'Unknown',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // JingloShowMotto介绍
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
              child: Text(
                item['JingloShowMotto'] ?? 'No description available',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 