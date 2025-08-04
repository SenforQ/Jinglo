import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import '../services/user_service.dart';

// VIP 产品常量
class VipProduct {
  final String productId;
  final String period;
  final double price;
  final String priceText;

  VipProduct({
    required this.productId,
    required this.period,
    required this.price,
    required this.priceText,
  });
}

final List<VipProduct> kVipProducts = [
  VipProduct(productId: 'JingloWeekVIP', period: 'Per week', price: 12.99, priceText: '\$12.99'),
  VipProduct(productId: 'JingloMonthVIP', period: 'Per month', price: 49.99, priceText: '\$49.99'),
];

class VipPage extends StatefulWidget {
  const VipPage({super.key});

  @override
  State<VipPage> createState() => _VipPageState();
}

class _VipPageState extends State<VipPage> {
  bool _isWeeklySelected = true;
  bool _isVipActive = false;
  final Map<String, bool> _loadingStates = {}; // 为每个商品单独管理loading状态
  final Map<String, Timer> _timeoutTimers = {}; // 为每个商品管理超时定时器
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};
  int _retryCount = 0;
  static const int maxRetries = 3;
  static const int timeoutDuration = 30; // 30秒超时

  // 处理超时
  void _handleTimeout(String productId) {
    if (mounted) {
      setState(() {
        _loadingStates[productId] = false;
      });
      
      // 取消定时器
      _timeoutTimers[productId]?.cancel();
      _timeoutTimers.remove(productId);
      
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
    _loadVipStatus();
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
      final Set<String> kIds = kVipProducts.map((e) => e.productId).toSet();
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

  Future<void> _loadVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isVipActive = prefs.getBool('user_vip_active') ?? false;
    });
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased || purchase.status == PurchaseStatus.restored) {
        await _inAppPurchase.completePurchase(purchase);
        
        // 激活VIP
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('user_vip_active', true);
        
        if (mounted) {
          setState(() {
            _isVipActive = true;
          });
          
          // 使用 try-catch 包装 toast 调用
          try {
            _showToast('VIP subscription activated successfully!');
          } catch (e) {
            debugPrint('Failed to show success toast: $e');
          }
          
          // 使用更安全的方式处理导航
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted && Navigator.of(context).canPop()) {
              try {
                Navigator.of(context).pop(true); // 返回并传递订阅成功状态
              } catch (e) {
                debugPrint('Failed to navigate back: $e');
              }
            }
          });
          
          // 通知其他页面VIP状态已更新
          UserService.notifyUserAction('vip_activated');
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
      
      // 清除所有商品的loading状态和超时定时器
      if (mounted) {
        setState(() {
          _loadingStates.clear();
        });
        
        // 取消所有超时定时器
        for (final timer in _timeoutTimers.values) {
          timer.cancel();
        }
        _timeoutTimers.clear();
      }
    }
  }



  Future<void> _restorePurchases() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    try {
      await _inAppPurchase.restorePurchases();
      _showToast('Restoring purchases...');
      // 恢复购买的结果会在 _onPurchaseUpdate 中处理
    } catch (e) {
      if (mounted) {
        _showToast('Restore failed: ${e.toString()}');
      }
    }
  }

  Future<void> _handleConfirmPurchase() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    // 根据选择确定要购买的产品
    final selectedProduct = _isWeeklySelected ? kVipProducts[0] : kVipProducts[1];
    
    setState(() {
      _loadingStates[selectedProduct.productId] = true; // 设置当前商品的loading状态
    });
    
    // 设置30秒超时定时器
    _timeoutTimers[selectedProduct.productId] = Timer(
      Duration(seconds: timeoutDuration),
      () => _handleTimeout(selectedProduct.productId),
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
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      // 取消超时定时器
      _timeoutTimers[selectedProduct.productId]?.cancel();
      _timeoutTimers.remove(selectedProduct.productId);
      
      if (mounted) {
        _showToast('Purchase failed: ${e.toString()}');
      }
      setState(() {
        _loadingStates[selectedProduct.productId] = false; // 清除当前商品的loading状态
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
                              'VIP',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _showVipInfo(context),
                          child: const Icon(
                            Icons.more_vert,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  // VIP 徽章
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/vip_icon_20250804.png',
                          width: 120,
                          height: 120,
                        ),
                        const SizedBox(height: 16),
                        // VIP 激活状态
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                          decoration: BoxDecoration(
                            color: _isVipActive ? const Color(0xFF4CAF50) : const Color(0xFF9E9E9E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            _isVipActive ? 'VIP ACTIVE' : 'VIP INACTIVE',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  // 会员权益部分
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Member benefits 标题
                          const Text(
                            'Member benefits',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFD700),
                            ),
                          ),
                          const SizedBox(height: 16),
                          
                          // 订阅计划选择或激活状态
                          if (_isVipActive) ...[
                            // VIP 已激活时显示
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: const Color(0xFF4A1B4A),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xFF4CAF50),
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.check_circle,
                                    color: Color(0xFF4CAF50),
                                    size: 48,
                                  ),
                                  const SizedBox(height: 12),
                                  const Text(
                                    'VIP Subscription Active',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4CAF50),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'You are currently enjoying all VIP benefits',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white70,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ] else ...[
                            // VIP 未激活时显示订阅选项
                            Row(
                              children: [
                                Expanded(
                                  child: _SubscriptionCard(
                                    isSelected: _isWeeklySelected,
                                    onTap: () => setState(() => _isWeeklySelected = true),
                                    productId: kVipProducts[0].productId,
                                    price: kVipProducts[0].price,
                                    period: kVipProducts[0].period,
                                    totalPrice: kVipProducts[0].price,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: _SubscriptionCard(
                                    isSelected: !_isWeeklySelected,
                                    onTap: () => setState(() => _isWeeklySelected = false),
                                    productId: kVipProducts[1].productId,
                                    price: kVipProducts[1].price,
                                    period: kVipProducts[1].period,
                                    totalPrice: kVipProducts[1].price,
                                  ),
                                ),
                              ],
                            ),
                          ],
                          
                          const SizedBox(height: 32),
                          
                          // Exclusive VIP Privileges 标题
                          const Text(
                            'Exclusive VIP Privileges',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFD700),
                            ),
                          ),
                          const SizedBox(height: 16),
                          
                          // VIP 特权列表
                          _VipPrivilegeItem(
                            icon: Icons.video_library,
                            title: 'Unlimited dance videos',
                            description: 'Access to all dance videos without limits',
                          ),
                          const SizedBox(height: 12),
                          _VipPrivilegeItem(
                            icon: Icons.block,
                            title: 'Ad-free experience',
                            description: 'Enjoy the app without any advertisements',
                          ),
                          const SizedBox(height: 12),
                          _VipPrivilegeItem(
                            icon: Icons.hd,
                            title: 'HD video quality',
                            description: 'Watch videos in high definition quality',
                          ),
                          const SizedBox(height: 12),
                          _VipPrivilegeItem(
                            icon: Icons.star,
                            title: 'VIP badge',
                            description: 'Exclusive VIP badge on your profile',
                          ),
                          const SizedBox(height: 12),
                          _VipPrivilegeItem(
                            icon: Icons.edit,
                            title: 'Edit profile info',
                            description: 'Modify your avatar, nickname, and signature',
                          ),
                          const SizedBox(height: 12),
                          _VipPrivilegeItem(
                            icon: Icons.event,
                            title: 'VIP exclusive events',
                            description: 'Access to exclusive VIP-only events',
                          ),
                          
                          const SizedBox(height: 40), // 底部间距
                        ],
                      ),
                    ),
                  ),
                  
                  // 确认按钮
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        if (!_isVipActive) ...[
                          // VIP 未激活时显示订阅按钮
                          SizedBox(
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
                              child: const Text(
                                'Confirm Purchase',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                        const SizedBox(height: 12),
                        // Restore 按钮
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () => _restorePurchases(),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: const BorderSide(color: Colors.white54),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              'Restore Purchases',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 购买Loading覆盖层
          if (_loadingStates.values.any((loading) => loading))
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

  void _showVipInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF3A1B3A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'VIP Subscription',
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
                'VIP Benefits:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(fontSize: 16, color: Colors.white)),
                  Expanded(
                    child: Text(
                      'Unlimited dance videos',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(fontSize: 16, color: Colors.white)),
                  Expanded(
                    child: Text(
                      'Ad-free experience',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(fontSize: 16, color: Colors.white)),
                  Expanded(
                    child: Text(
                      'HD video quality',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(fontSize: 16, color: Colors.white)),
                  Expanded(
                    child: Text(
                      'Edit profile info',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ),
                ],
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
}

class _SubscriptionCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String productId;
  final double price;
  final String period;
  final double totalPrice;

  const _SubscriptionCard({
    required this.isSelected,
    required this.onTap,
    required this.productId,
    required this.price,
    required this.period,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF4A1B4A) : const Color(0xFF3A1B3A),
          border: Border.all(
            color: isSelected ? const Color(0xFFFFD700) : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'USD${price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              period,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Total \$${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VipPrivilegeItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _VipPrivilegeItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF3A1B3A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFFFD700),
            size: 32,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFD700),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 