import 'package:flutter/material.dart';
import 'dart:async';
import '../models/user_info.dart';
import '../services/user_service.dart';
import 'privacy_policy_page.dart';
import 'user_agreement_page.dart';
import 'about_us_page.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with AutomaticKeepAliveClientMixin {
  UserInfo? _userInfo;
  bool _isLoading = true;
  StreamSubscription<String>? _userActionSubscription;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
    _setupUserActionListener();
  }

  Future<void> _loadUserInfo() async {
    try {
      final userInfo = await UserService.getUserInfo();
      setState(() {
        _userInfo = userInfo;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _userInfo = UserInfo.defaultUser;
        _isLoading = false;
      });
    }
  }

  // 设置用户操作监听器
  void _setupUserActionListener() {
    _userActionSubscription = UserService.userActionStream.listen((action) {
      debugPrint('MinePage received user action: $action');
      if (action == 'user_followed' || action == 'user_unfollowed') {
        debugPrint('MinePage refreshing data after follow action');
        _refreshUserInfo();
      }
    });
  }

  // 刷新用户信息
  void _refreshUserInfo() {
    _loadUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F132E),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Column(
              children: [
                // 顶部背景图片
                Container(
                  width: double.infinity,
                  height: 300,
                  margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                  child: Stack(
                    children: [
                      // 背景图片
                      Positioned.fill(
                        child: Image.asset(
                          'assets/img_me_bg_20250724.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // 用户信息内容
                      Positioned(
                        top: 60,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            // 用户头像
                            Container(
                              width: 82,
                              height: 82,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  _userInfo?.avatar ?? 'assets/user_default_20250724.png',
                                  width: 82,
                                  height: 82,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            // 用户姓名
                            Text(
                              _userInfo?.name ?? 'Jinglo985',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            // 个性签名
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Text(
                                _userInfo?.signature ?? 'Love dancing is like love life',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: 20),
                            // 粉丝和关注数
                            Row(
                              children: [
                                // 左半边区域 - 粉丝数
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '${_userInfo?.followers ?? 0}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Text(
                                        'Followers',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // 分隔线
                                Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.white.withValues(alpha: 0.3),
                                ),
                                // 右半边区域 - 关注数
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '${_userInfo?.following ?? 0}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Text(
                                        'Following',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // 下半部分功能区
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 90.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Commonly used functions 标题
                        const Text(
                          'Commonly used functions',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF666666),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // 功能卡片区域
                        Container(
                          width: double.infinity,
                          height: 188,
                          decoration: BoxDecoration(
                            color: const Color(0xFF666666),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                // 第一行：Privacy Policy、Setting、About us
                                Expanded(
                                  child: Row(
                                    children: [
                                       // Setting
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/me_setting_20250724.png',
                                              width: 32,
                                              height: 32,
                                            ),
                                            const SizedBox(height: 8),
                                            const Text(
                                              'Editor Info',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Privacy Policy
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const PrivacyPolicyPage(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/me_privacy_20250724.png',
                                                width: 32,
                                                height: 32,
                                              ),
                                              const SizedBox(height: 8),
                                              const Text(
                                                'Privacy Policy',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                     
                                      // About us
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const AboutUsPage(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/me_about_20250724.png',
                                                width: 32,
                                                height: 32,
                                              ),
                                              const SizedBox(height: 8),
                                              const Text(
                                                'About us',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // 第二行：User Agreement
                                Expanded(
                                  child: Row(
                                    children: [
                                      // User Agreement
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const UserAgreementPage(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/me_terms_20250724.png',
                                                width: 32,
                                                height: 32,
                                              ),
                                              const SizedBox(height: 8),
                                              const Text(
                                                'User Agreement',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // 预留空间
                                      const Expanded(child: SizedBox()),
                                      // 预留空间
                                      const Expanded(child: SizedBox()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  @override
  void dispose() {
    _userActionSubscription?.cancel();
    super.dispose();
  }
} 