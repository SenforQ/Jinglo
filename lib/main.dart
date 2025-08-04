import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/ai_dance_page.dart';
import 'pages/dance_circle_page.dart';
import 'pages/mine_page.dart';
import 'pages/welcome_page.dart';
import 'widgets/music_player_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const JingloApp());
}

class JingloApp extends StatelessWidget {
  const JingloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jinglo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2F132E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2F132E),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const AiDancePage(),
    const DanceCirclePage(),
    const MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景图片
          Positioned.fill(
            child: Image.asset(
              'assets/content_background_20250724.png',
              fit: BoxFit.cover,
            ),
          ),
          // 页面内容 - 使用IndexedStack保持状态
          IndexedStack(
            index: _currentIndex,
            children: _pages,
      ),
          // 音乐播放器 - 只在首页显示
          if (_currentIndex == 0)
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: const MusicPlayerWidget(),
            ),
          // 自定义TabBar
          Positioned(
            bottom: 12,
            left: 24,
            right: 24,
            child: CustomTabBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final tabBarWidth = screenWidth - 48;
    
    return Container(
      width: tabBarWidth,
      height: 58,
      decoration: BoxDecoration(
        color: const Color(0xFF43393F),
        borderRadius: BorderRadius.circular(29),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTabItem(0, 'assets/tab_tab_1_nor_20250724.png', 'assets/tab_tab_1_pre_20250724.png'),
          _buildTabItem(1, 'assets/tab_tab_2_nor_20250724.png', 'assets/tab_tab_2_pre_20250724.png'),
          _buildTabItem(2, 'assets/tab_tab_3_nor_20250724.png', 'assets/tab_tab_3_pre_20250724.png'),
          _buildTabItem(3, 'assets/tab_tab_4_nor_20250724.png', 'assets/tab_tab_4_pre_20250724.png'),
          ],
        ),
    );
  }

  Widget _buildTabItem(int index, String normalIcon, String selectedIcon) {
    final isSelected = currentIndex == index;
    
    return GestureDetector(
      onTap: () => onTap(index),
      child: SizedBox(
        width: 58,
        height: 58,
        child: Center(
          child: Image.asset(
            isSelected ? selectedIcon : normalIcon,
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}


