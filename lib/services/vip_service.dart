import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VipService {
  static const String _vipStatusKey = 'vip_status';
  static const String _vipExpiryKey = 'vip_expiry';
  static const String _vipProductIdKey = 'vip_product_id';
  
  // 产品ID
  static const String weeklyVipId = 'JingloWeekVIP';
  static const String monthlyVipId = 'JingloMonthVIP';
  
  // 单例模式
  static final VipService _instance = VipService._internal();
  factory VipService() => _instance;
  VipService._internal();

  // 购买状态流
  final StreamController<bool> _vipStatusController = StreamController<bool>.broadcast();
  Stream<bool> get vipStatusStream => _vipStatusController.stream;

  // 初始化购买服务
  Future<void> initialize() async {
    // 检查购买是否可用
    final bool available = await InAppPurchase.instance.isAvailable();
    if (!available) {
      debugPrint('In-app purchases not available');
      return;
    }

    // 监听购买更新
    InAppPurchase.instance.purchaseStream.listen(_handlePurchaseUpdates);
  }

  // 获取产品信息
  Future<List<ProductDetails>> getProducts() async {
    try {
      final ProductDetailsResponse response = await InAppPurchase.instance
          .queryProductDetails({weeklyVipId, monthlyVipId});
      
      if (response.error != null) {
        debugPrint('Error querying products: ${response.error}');
        return [];
      }
      
      return response.productDetails;
    } catch (e) {
      debugPrint('Exception querying products: $e');
      return [];
    }
  }

  // 购买VIP
  Future<bool> purchaseVip(String productId) async {
    try {
      final ProductDetailsResponse response = await InAppPurchase.instance
          .queryProductDetails({productId});
      
      if (response.error != null) {
        debugPrint('Error querying product: ${response.error}');
        return false;
      }
      
      if (response.productDetails.isEmpty) {
        debugPrint('Product not found: $productId');
        return false;
      }
      
      final ProductDetails productDetails = response.productDetails.first;
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: productDetails,
      );
      
      // 直接发起购买，购买成功后会自动激活VIP
      bool success = false;
      if (productDetails.id == weeklyVipId || productDetails.id == monthlyVipId) {
        success = await InAppPurchase.instance.buyNonConsumable(
          purchaseParam: purchaseParam,
        );
        
        if (success) {
          debugPrint('Purchase initiated successfully for: $productId');
        }
      }
      
      return success;
    } catch (e) {
      debugPrint('Exception during purchase: $e');
      return false;
    }
  }

  // 恢复购买
  Future<void> restorePurchases() async {
    try {
      await InAppPurchase.instance.restorePurchases();
    } catch (e) {
      debugPrint('Exception restoring purchases: $e');
    }
  }

  // 处理购买更新
  void _handlePurchaseUpdates(List<PurchaseDetails> purchaseDetailsList) {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // 购买待处理
        debugPrint('Purchase pending: ${purchaseDetails.productID}');
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                 purchaseDetails.status == PurchaseStatus.restored) {
        // 购买成功或恢复成功
        _handleSuccessfulPurchase(purchaseDetails);
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        // 购买失败
        debugPrint('Purchase error: ${purchaseDetails.error}');
      } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        // 购买取消
        debugPrint('Purchase canceled: ${purchaseDetails.productID}');
      }
      
      // 完成购买
      if (purchaseDetails.pendingCompletePurchase) {
        InAppPurchase.instance.completePurchase(purchaseDetails);
      }
    }
  }

  // 处理成功购买
  void _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    debugPrint('Purchase successful: ${purchaseDetails.productID}');
    
    // 计算VIP到期时间
    DateTime expiryDate;
    if (purchaseDetails.productID == weeklyVipId) {
      expiryDate = DateTime.now().add(const Duration(days: 7));
    } else if (purchaseDetails.productID == monthlyVipId) {
      expiryDate = DateTime.now().add(const Duration(days: 30));
    } else {
      return;
    }
    
    // 直接激活VIP，不需要额外校验
    await _saveVipStatus(true, expiryDate, purchaseDetails.productID);
    
    // 立即通知状态更新
    _vipStatusController.add(true);
    
    debugPrint('VIP activated successfully for product: ${purchaseDetails.productID}');
  }

  // 保存VIP状态
  Future<void> _saveVipStatus(bool isVip, DateTime expiryDate, String productId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_vipStatusKey, isVip);
    await prefs.setString(_vipExpiryKey, expiryDate.toIso8601String());
    await prefs.setString(_vipProductIdKey, productId);
  }

  // 获取VIP状态
  Future<bool> getVipStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isVip = prefs.getBool(_vipStatusKey) ?? false;
    
    if (!isVip) return false;
    
    // 检查是否过期
    final expiryString = prefs.getString(_vipExpiryKey);
    if (expiryString != null) {
      final expiryDate = DateTime.parse(expiryString);
      if (DateTime.now().isAfter(expiryDate)) {
        // VIP已过期
        await _saveVipStatus(false, DateTime.now(), '');
        return false;
      }
    }
    
    return isVip;
  }

  // 获取VIP到期时间
  Future<DateTime?> getVipExpiryDate() async {
    final prefs = await SharedPreferences.getInstance();
    final expiryString = prefs.getString(_vipExpiryKey);
    if (expiryString != null) {
      return DateTime.parse(expiryString);
    }
    return null;
  }

  // 获取VIP产品ID
  Future<String?> getVipProductId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_vipProductIdKey);
  }

  // 检查VIP是否即将过期（7天内）
  Future<bool> isVipExpiringSoon() async {
    final expiryDate = await getVipExpiryDate();
    if (expiryDate == null) return false;
    
    final daysUntilExpiry = expiryDate.difference(DateTime.now()).inDays;
    return daysUntilExpiry <= 7 && daysUntilExpiry > 0;
  }

  // 释放资源
  void dispose() {
    _vipStatusController.close();
  }
} 