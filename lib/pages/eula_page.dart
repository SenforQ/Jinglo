import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EULAPage extends StatefulWidget {
  const EULAPage({super.key});

  @override
  State<EULAPage> createState() => _EULAPageState();
}

class _EULAPageState extends State<EULAPage> {
  late final WebViewController controller;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // 更新加载进度
          },
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.apple.com/legal/internet-services/itunes/dev/stdeula/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F132E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F132E),
        foregroundColor: Colors.white,
        title: const Text(
          'EULA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (isLoading)
            const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
} 