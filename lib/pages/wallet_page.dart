import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

// 金币产品常量
class CoinProduct {
  final String productId;
  final int coins;
  final double price;
  final String priceText;

  CoinProduct({
    required this.productId,
    required this.coins,
    required this.price,
    required this.priceText,
  });
}

final List<CoinProduct> kCoinProducts = [
  CoinProduct(productId: 'Jinglo', coins: 32, price: 0.99, priceText: '\$0.99'),
  CoinProduct(productId: 'Jinglo2', coins: 96, price: 2.99, priceText: '\$2.99'),
  CoinProduct(productId: 'Jinglo5', coins: 189, price: 5.99, priceText: '\$5.99'),
  CoinProduct(productId: 'Jinglo9', coins: 359, price: 9.99, priceText: '\$9.99'),
  CoinProduct(productId: 'Jinglo19', coins: 729, price: 19.99, priceText: '\$19.99'),
  CoinProduct(productId: 'Jinglo49', coins: 1869, price: 49.99, priceText: '\$49.99'),
  CoinProduct(productId: 'Jinglo99', coins: 3799, price: 99.99, priceText: '\$99.99'),
  CoinProduct(productId: 'Jinglo159', coins: 5999, price: 159.99, priceText: '\$159.99'),
  CoinProduct(productId: 'Jinglo239', coins: 9059, price: 239.99, priceText: '\$239.99'),
];

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _currentCoins = 0;
  int _selectedIndex = 0; // 默认选中第一个产品
  bool _isPurchasing = false; // 全局购买状态
  final Map<String, Timer> _timeoutTimers = {}; // 为每个商品管理超时定时器
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};
  int _retryCount = 0;
  static const int maxRetries = 3;
  static const int timeoutDuration = 30; // 30秒超时

  // 处理购买超时
  void _handlePurchaseTimeout() {
    if (mounted) {
      setState(() {
        _isPurchasing = false;
      });
      
      // 取消定时器
      _timeoutTimers['purchase']?.cancel();
      _timeoutTimers.remove('purchase');
      
      // 显示超时提示
      try {
        _showToast('Payment timeout. Please try again.');
      } catch (e) {
        debugPrint('Failed to show timeout toast: $e');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadCoins();
    _checkConnectivityAndInit();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    // 取消所有超时定时器
    for (final timer in _timeoutTimers.values) {
      timer.cancel();
    }
    _timeoutTimers.clear();
    super.dispose();
  }

  Future<void> _checkConnectivityAndInit() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      _showToast('No internet connection. Please check your network settings.');
      return;
    }
    await _initIAP();
  }

  Future<void> _initIAP() async {
    try {
      final available = await _inAppPurchase.isAvailable();
      if (!mounted) return;
      setState(() {
        _isAvailable = available;
      });
      if (!available) {
        if (mounted) {
          _showToast('In-App Purchase not available');
        }
        return;
      }
      final Set<String> kIds = kCoinProducts.map((e) => e.productId).toSet();
      final response = await _inAppPurchase.queryProductDetails(kIds);
      if (response.error != null) {
        if (_retryCount < maxRetries) {
          _retryCount++;
          await Future.delayed(const Duration(seconds: 2));
          await _initIAP();
          return;
        }
        _showToast('Failed to load products: ${response.error!.message}');
      }
      setState(() {
        _products = {for (var p in response.productDetails) p.id: p};
      });
      _subscription = _inAppPurchase.purchaseStream.listen(
        _onPurchaseUpdate,
        onDone: () {
          _subscription?.cancel();
        },
        onError: (e) {
          if (mounted) {
            _showToast('Purchase error: ${e.toString()}');
          }
        },
      );
    } catch (e) {
      if (_retryCount < maxRetries) {
        _retryCount++;
        await Future.delayed(const Duration(seconds: 2));
        await _initIAP();
      } else {
        if (mounted) {
          _showToast('Failed to initialize in-app purchases. Please try again later.');
        }
      }
    }
  }

  Future<void> _loadCoins() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _currentCoins = prefs.getInt('user_coins') ?? 0;
    });
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased || purchase.status == PurchaseStatus.restored) {
        await _inAppPurchase.completePurchase(purchase);
        
        // 找到对应的产品并添加金币
        final product = kCoinProducts.firstWhere(
          (p) => p.productId == purchase.productID,
          orElse: () => CoinProduct(productId: '', coins: 0, price: 0, priceText: ''),
        );
        
        if (product.coins > 0) {
          final prefs = await SharedPreferences.getInstance();
          final currentCoins = prefs.getInt('user_coins') ?? 0;
          final newCoins = currentCoins + product.coins;
          await prefs.setInt('user_coins', newCoins);
          
          if (mounted) {
            setState(() {
              _currentCoins = newCoins;
            });
            
            // 使用 try-catch 包装 toast 调用
            try {
              _showToast('Successfully purchased ${product.coins} coins!');
            } catch (e) {
              debugPrint('Failed to show success toast: $e');
            }
          }
        }
      } else if (purchase.status == PurchaseStatus.error) {
        if (mounted) {
          try {
            _showToast('Purchase failed: ${purchase.error?.message ?? ''}');
          } catch (e) {
            debugPrint('Failed to show error toast: $e');
          }
        }
      } else if (purchase.status == PurchaseStatus.canceled) {
        if (mounted) {
          try {
            _showToast('Purchase canceled.');
          } catch (e) {
            debugPrint('Failed to show cancel toast: $e');
          }
        }
      }
      
      // 清除购买状态和超时定时器
      if (mounted) {
        setState(() {
          _isPurchasing = false;
        });
        
        // 取消所有超时定时器
        for (final timer in _timeoutTimers.values) {
          timer.cancel();
        }
        _timeoutTimers.clear();
      }
    }
  }



  Future<void> _handleConfirmPurchase() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    // 获取选中的产品
    final selectedProduct = kCoinProducts[_selectedIndex];
    
    setState(() {
      _isPurchasing = true; // 使用全局购买状态
    });
    
    // 设置30秒超时定时器
    _timeoutTimers['purchase'] = Timer(
      Duration(seconds: timeoutDuration),
      () => _handlePurchaseTimeout(),
    );
    
    try {
      // 尝试获取对应的产品详情
      final product = _products[selectedProduct.productId];
      
      // 如果没有找到对应的产品，使用第一个可用的产品进行购买
      ProductDetails? productToUse = product;
      if (productToUse == null && _products.isNotEmpty) {
        productToUse = _products.values.first;
      }
      
      if (productToUse == null) {
        throw Exception('No products available for purchase');
      }
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: productToUse);
      await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      // 取消超时定时器
      _timeoutTimers['purchase']?.cancel();
      _timeoutTimers.remove('purchase');
      
      if (mounted) {
        _showToast('Purchase failed: ${e.toString()}');
      }
      setState(() {
        _isPurchasing = false; // 清除购买状态
      });
    }
  }

  void _showToast(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: const Color(0xFF4A1B4A),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  void _showCoinInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF3A1B3A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'Coin Instructions',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFD700),
            ),
            textAlign: TextAlign.center,
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Coins can only be obtained through in-app purchases or events.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '2. Each new device has a 100 coin usage limit.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 12),
              Text(
                '3. Each message with AI assistant will cost 2 coins as service fee.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              child: const Text(
                'Got it',
                style: TextStyle(
                  color: Color(0xFFFFD700),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF1A1A1A),
                  Color(0xFF2A1B2A),
                  Color(0xFF3A1B3A),
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  // 顶部导航栏
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (Navigator.of(context).canPop()) {
                              Navigator.of(context).pop();
                            }
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _showCoinInstructions(context),
                          child: const Icon(
                            Icons.help_outline,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  // 金币余额
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/wallet_icon_20250804.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '$_currentCoins',
                          style: const TextStyle(
                            color: Color(0xFFFFD700),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Coins',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  // 购买选项
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 购买金币标题
                          const Text(
                            'Buy Coins',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFD700),
                            ),
                          ),
                          const SizedBox(height: 16),
                          
                          // 金币购买选项网格
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.0,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                            ),
                            itemCount: kCoinProducts.length,
                            itemBuilder: (context, index) {
                              final product = kCoinProducts[index];
                              final isSelected = _selectedIndex == index;
                              
                              return _CoinCard(
                                product: product,
                                isSelected: isSelected,
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                              );
                            },
                          ),
                          
                          const SizedBox(height: 40), // 底部间距
                        ],
                      ),
                    ),
                  ),
                  
                  // 确认购买按钮
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => _handleConfirmPurchase(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFD700),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: _isPurchasing
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                                ),
                              )
                            : Text(
                                'Confirm Purchase ${kCoinProducts[_selectedIndex].priceText}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 购买Loading覆盖层
          if (_isPurchasing)
            Container(
              color: Colors.black.withValues(alpha: 0.5),
              child: const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFFD700)),
                    strokeWidth: 4,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _CoinCard extends StatelessWidget {
  final CoinProduct product;
  final bool isSelected;
  final VoidCallback onTap;

  const _CoinCard({
    required this.product,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF4A1B4A) : const Color(0xFF3A1B3A),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? const Color(0xFFFFD700) : Colors.transparent,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.monetization_on,
              color: Color(0xFFFFD700),
              size: 28,
            ),
            const SizedBox(height: 4),
            Text(
              '${product.coins}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Coins',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              product.priceText,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFD700),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 