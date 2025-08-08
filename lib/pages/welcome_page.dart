import 'package:flutter/material.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'user_agreement_page.dart';
import 'privacy_policy_page.dart';
import 'eula_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _isAgreed = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkAgreementStatus();
  }

  Future<void> _checkAgreementStatus() async {
    try {
      // 每次进入App都需要重新同意协议，不检查历史状态
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error checking agreement status: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _agreeToTerms() async {
    if (!_isAgreed) {
      // 显示提示，要求用户先同意协议
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please agree to the Terms of Service, Privacy Policy and EULA first'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
      return;
    }

    try {
      // 请求App Tracking Transparency权限
      await _requestTrackingPermission();
      
      // 跳转到主页面
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/main');
      }
    } catch (e) {
      debugPrint('Error navigating to main page: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> _requestTrackingPermission() async {
    try {
      // 检查当前跟踪授权状态
      final status = await AppTrackingTransparency.trackingAuthorizationStatus;
      
      // 如果状态是未确定，则请求权限
      if (status == TrackingStatus.notDetermined) {
        // 延迟1秒后请求权限，给用户时间了解应用
        await Future.delayed(const Duration(seconds: 1));
        await AppTrackingTransparency.requestTrackingAuthorization();
      }
      
      // 获取最终的跟踪授权状态
      final finalStatus = await AppTrackingTransparency.trackingAuthorizationStatus;
      debugPrint('App Tracking Transparency status: $finalStatus');
      
    } catch (e) {
      debugPrint('Error requesting tracking permission: $e');
      // 即使请求失败，也继续进入应用
    }
  }

  void _navigateToUserAgreement() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UserAgreementPage(),
      ),
    );
  }

  void _navigateToPrivacyPolicy() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PrivacyPolicyPage(),
      ),
    );
  }

  void _navigateToEULA() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EULAPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Color(0xFF2F132E),
        body: Center(
          child: CircularProgressIndicator(
            color: Color(0xFFFF43AB),
          ),
        ),
      );
    }

    final screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Stack(
        children: [
          // 背景图片 - 全屏显示
          Positioned.fill(
            child: Image.asset(
              'assets/welcome_bg_20250731.png',
              fit: BoxFit.cover,
              width: screenSize.width,
              height: screenSize.height,
            ),
          ),
          
          // 底部UI元素
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.3),
                    Colors.black.withValues(alpha: 0.7),
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [


                                      // 进入APP按钮
                  GestureDetector(
                    onTap: _agreeToTerms,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Enter APP',
                          style: TextStyle(
                            color: Color(0xFFFF43AB),
                            fontSize: 17,
                            fontWeight: FontWeight.w500, // Medium
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30),

                  // 协议同意复选框
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isAgreed = !_isAgreed;
                          });
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: _isAgreed ? const Color(0xFFFF43AB) : Colors.transparent,
                            border: Border.all(
                              color: _isAgreed ? const Color(0xFFFF43AB) : Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: _isAgreed
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                )
                              : null,
                        ),
                      ),
                      const SizedBox(width: 12),
                                             Expanded(
                         child: RichText(
                           text: TextSpan(
                             style: const TextStyle(
                               color: Colors.white,
                               fontSize: 14,
                             ),
                             children: [
                               const TextSpan(text: 'I have read and agree to '),
                               WidgetSpan(
                                 child: GestureDetector(
                                   onTap: _navigateToUserAgreement,
                                   child: const Text(
                                     'Terms of Service',
                                     style: TextStyle(
                                       color: Colors.black,
                                       decoration: TextDecoration.underline,
                                     ),
                                   ),
                                 ),
                               ),
                               const TextSpan(text: ', '),
                               WidgetSpan(
                                 child: GestureDetector(
                                   onTap: _navigateToPrivacyPolicy,
                                   child: const Text(
                                     'Privacy Policy',
                                     style: TextStyle(
                                       color: Colors.black,
                                       decoration: TextDecoration.underline,
                                     ),
                                   ),
                                 ),
                               ),
                               const TextSpan(text: ' and '),
                               WidgetSpan(
                                 child: GestureDetector(
                                   onTap: _navigateToEULA,
                                   child: const Text(
                                     'EULA',
                                     style: TextStyle(
                                       color: Colors.black,
                                       decoration: TextDecoration.underline,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                    ],
                  ),
                  
                  const SizedBox(height: 36),
                  

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 