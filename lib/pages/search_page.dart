import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import '../services/user_service.dart';
import 'character_detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];
  bool _isSearching = false;
  bool _hasSearched = false;
  List<Map<String, dynamic>> _allCharacters = [];
  StreamSubscription<String>? _userActionSubscription;

  @override
  void initState() {
    super.initState();
    _loadAllCharacters();
    _setupUserActionListener();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _userActionSubscription?.cancel();
    super.dispose();
  }

  // 加载所有角色数据
  Future<void> _loadAllCharacters() async {
    try {
      // 加载两个数据源的角色
      final List<Map<String, dynamic>> allCharacters = [];
      
      // 加载 figure_20250728.json
      final String figureJsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/figure_20250728.json');
      final Map<String, dynamic> figureJsonData = json.decode(figureJsonString);
      final List<dynamic> figureCharacters = figureJsonData['characters'];
      
      // 加载 home_people.json
      final String homeJsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/home_people.json');
      final Map<String, dynamic> homeJsonData = json.decode(homeJsonString);
      final List<dynamic> homeCharacters = homeJsonData['characters'];
      
      // 合并所有角色并去重
      final Set<String> seenUserNames = <String>{};
      
      for (final character in figureCharacters) {
        final userName = character['JingloUserName'];
        if (!seenUserNames.contains(userName)) {
          allCharacters.add(character);
          seenUserNames.add(userName);
        }
      }
      
      for (final character in homeCharacters) {
        final userName = character['JingloUserName'];
        if (!seenUserNames.contains(userName)) {
          allCharacters.add(character);
          seenUserNames.add(userName);
        }
      }
      
      // 过滤掉被拉黑和屏蔽的用户
      debugPrint('SearchPage: Before filtering - ${allCharacters.length} characters');
      final List<Map<String, dynamic>> filteredCharacters = 
          await UserService.filterUsers(allCharacters);
      
      setState(() {
        _allCharacters = filteredCharacters;
      });
      
      debugPrint('SearchPage: After filtering - ${_allCharacters.length} characters for search');
    } catch (e) {
      debugPrint('Error loading characters for search: $e');
    }
  }

  // 设置用户操作监听器
  void _setupUserActionListener() {
    _userActionSubscription = UserService.userActionStream.listen((action) {
      debugPrint('SearchPage received user action: $action');
      if (action == 'user_blocked' || action == 'user_hidden') {
        debugPrint('SearchPage refreshing data after user action');
        _refreshData();
      }
    });
  }

  // 刷新数据
  void _refreshData() {
    // 清空当前搜索结果
    setState(() {
      _searchResults = [];
      _hasSearched = false;
    });
    
    // 重新加载所有角色数据
    _loadAllCharacters();
    
    // 如果当前有搜索查询，重新执行搜索
    if (_searchController.text.trim().isNotEmpty) {
      _performSearch(_searchController.text);
    }
  }

  // 执行搜索
  void _performSearch(String query) {
    if (query.trim().isEmpty) {
      setState(() {
        _searchResults = [];
        _hasSearched = false;
      });
      return;
    }

    setState(() {
      _isSearching = true;
      _hasSearched = true;
    });

    // 模拟搜索延迟
    Future.delayed(const Duration(milliseconds: 300), () {
      final searchQuery = query.toLowerCase().trim();
      
      final results = _allCharacters.where((character) {
        final nickName = (character['JingloNickName'] ?? '').toString().toLowerCase();
        final userName = (character['JingloUserName'] ?? '').toString().toLowerCase();
        final motto = (character['JingloShowMotto'] ?? '').toString().toLowerCase();
        
        return nickName.contains(searchQuery) || 
               userName.contains(searchQuery) || 
               motto.contains(searchQuery);
      }).toList();

      debugPrint('SearchPage: Search query "$searchQuery" found ${results.length} results');

      if (mounted) {
        setState(() {
          _searchResults = results;
          _isSearching = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F132E),
      body: SafeArea(
        child: Column(
          children: [
            // 顶部搜索栏
            _buildSearchBar(),
            // 搜索结果
            Expanded(
              child: _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  // 构建搜索栏
  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          // 返回按钮
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 搜索输入框
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: TextField(
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                                 decoration: const InputDecoration(
                   hintText: 'Search character name...',
                   hintStyle: TextStyle(color: Colors.white60),
                   border: InputBorder.none,
                   contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                   prefixIcon: Icon(
                     Icons.search,
                     color: Colors.white60,
                     size: 20,
                   ),
                 ),
                onChanged: _performSearch,
                autofocus: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 构建搜索结果
  Widget _buildSearchResults() {
         if (!_hasSearched) {
       return const Center(
         child: Text(
           'Enter character name to start searching',
           style: TextStyle(
             color: Colors.white60,
             fontSize: 16,
           ),
         ),
       );
     }

    if (_isSearching) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Color(0xFFFF43AB),
            ),
            SizedBox(height: 16),
                         Text(
               'Searching...',
               style: TextStyle(
                 color: Colors.white60,
                 fontSize: 16,
               ),
             ),
          ],
        ),
      );
    }

         if (_searchResults.isEmpty) {
       return Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Icon(
               Icons.search_off,
               color: Colors.white60,
               size: 64,
             ),
             const SizedBox(height: 16),
             const Text(
               '暂无该数据',
               style: TextStyle(
                 color: Colors.white60,
                 fontSize: 18,
                 fontWeight: FontWeight.w500,
               ),
             ),
             const SizedBox(height: 8),
             Text(
               'No matching characters found',
               style: TextStyle(
                 color: Colors.white.withValues(alpha: 0.4),
                 fontSize: 14,
               ),
             ),
           ],
         ),
       );
     }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        final character = _searchResults[index];
        return _buildCharacterCard(character);
      },
    );
  }

  // 构建角色卡片
  Widget _buildCharacterCard(Map<String, dynamic> character) {
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
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF591C47),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFFF43AB),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            // 角色头像
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFFFF43AB),
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  character['JingloUserIcon'] ?? 'assets/user_default_20250724.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFFF43AB),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 32,
                      ),
                    );
                  },
                ),
              ),
            ),
            // 角色信息
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character['JingloNickName'] ?? 'Unknown',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      character['JingloUserName'] ?? '',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      character['JingloShowMotto'] ?? '',
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            // 添加点击指示器
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white60,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 