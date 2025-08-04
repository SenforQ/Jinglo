# VIP购买功能实现

## 功能概述

本应用实现了完整的VIP订阅购买功能，包括：

- 周会员和月会员两种订阅选项
- 苹果内购集成
- 购买成功后自动返回上一页
- 已经是VIP时提示无法重复购买
- 超时处理和网络检查
- 恢复购买功能

## 技术实现

### 1. 产品配置

```dart
final List<VipProduct> kVipProducts = [
  VipProduct(productId: 'JingloWeekVIP', period: 'Per week', price: 12.99, priceText: '\$12.99'),
  VipProduct(productId: 'JingloMonthVIP', period: 'Per month', price: 49.99, priceText: '\$49.99'),
];
```

### 2. 核心特性

#### 网络检查
- 使用 `connectivity_plus` 检查网络连接
- 无网络时显示提示信息

#### 超时处理
- 30秒购买超时机制
- 自动取消超时定时器
- 超时后显示提示信息

#### 重试机制
- 最多重试3次
- 每次重试间隔2秒
- 重试失败后显示错误信息

#### 状态管理
- 为每个商品单独管理loading状态
- 使用 `Map<String, bool> _loadingStates` 跟踪购买状态
- 使用 `Map<String, Timer> _timeoutTimers` 管理超时定时器

### 3. 购买流程

1. **初始化检查**
   - 检查网络连接
   - 验证内购可用性
   - 加载产品信息

2. **购买处理**
   - 设置loading状态
   - 启动30秒超时定时器
   - 调用苹果内购API
   - 处理购买结果

3. **结果处理**
   - 成功：激活VIP，显示成功提示，使用安全的导航方式自动返回
   - 失败：显示错误信息，清除loading状态
   - 取消：显示取消信息
   - 超时：显示超时提示

### 4. VIP状态管理

- 使用 `SharedPreferences` 存储VIP状态
- Key: `'user_vip_active'`
- 购买成功后立即激活VIP
- 页面显示时检查VIP状态

### 5. UI特性

#### VIP已激活状态
- 显示"VIP ACTIVE"标签
- 隐藏购买按钮
- 显示激活成功提示
- 显示VIP特权列表

#### VIP未激活状态
- 显示"VIP INACTIVE"标签
- 显示周/月会员选择
- 显示购买按钮
- 显示恢复购买按钮

#### 加载状态
- 全屏loading覆盖层
- 金色loading指示器
- 防止重复点击

## 文件结构

```
lib/
├── pages/
│   ├── vip_page.dart          # VIP购买页面
│   ├── mine_page.dart         # 个人页面（显示VIP状态）
│   └── wallet_page.dart       # 钱包页面（占位符）
├── services/
│   └── user_service.dart      # 用户服务（集成VIP状态）
└── models/
    └── user_info.dart         # 用户信息模型（包含VIP状态）
```

## 依赖项

```yaml
dependencies:
  in_app_purchase: ^3.1.13
  connectivity_plus: ^5.0.2
  shared_preferences: ^2.2.2
```

## 配置要求

### iOS配置

1. **StoreKit配置文件**
   - 文件：`ios/Runner/Configuration/Products.storekit`
   - 包含两个非续费订阅产品

2. **App Store Connect配置**
   - 产品ID：`JingloWeekVIP` 和 `JingloMonthVIP`
   - 价格：$12.99 和 $49.99
   - 类型：非续费订阅

## 使用说明

### 开发者测试

1. 在Xcode中打开项目
2. 选择StoreKit配置文件
3. 运行应用进行测试购买

### 用户使用

1. 进入个人页面
2. 点击VIP图标
3. 选择周会员或月会员
4. 点击"Confirm Purchase"
5. 完成苹果支付
6. 购买成功后自动返回

## 错误处理

- **网络错误**：显示网络连接提示
- **内购不可用**：显示内购不可用提示
- **产品加载失败**：自动重试最多3次
- **购买失败**：显示具体错误信息
- **购买超时**：30秒后自动超时
- **用户取消**：显示取消提示
- **导航错误**：使用安全的导航方式，避免Navigator状态冲突

## 安全考虑

- 使用苹果官方内购API
- 本地存储VIP状态
- 无服务器端验证（简化实现）
- 生产环境建议添加服务器验证

## 未来优化

1. 添加服务器端验证
2. 实现VIP到期提醒
3. 添加更多支付方式
4. 实现家庭共享
5. 添加购买历史记录 