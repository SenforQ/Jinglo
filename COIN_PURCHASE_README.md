# 金币购买功能实现

## 功能概述

本应用实现了完整的金币购买功能，包括：

- 9种不同面额的金币购买选项（从32金币到9059金币）
- 苹果内购集成（一次性付费）
- 购买成功后立即添加金币到账户
- 超时处理和网络检查
- 恢复购买功能
- 实时金币余额显示

## 技术实现

### 1. 产品配置

```dart
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
   - 加载当前金币余额

2. **购买处理**
   - 设置loading状态
   - 启动30秒超时定时器
   - 调用苹果内购API（一次性付费）
   - 处理购买结果

3. **结果处理**
   - 成功：立即添加金币到账户，显示成功提示
   - 失败：显示错误信息，清除loading状态
   - 取消：显示取消信息
   - 超时：显示超时提示

### 4. 金币管理

- 使用 `SharedPreferences` 存储金币余额
- Key: `'user_coins'`
- 购买成功后立即更新余额
- 实时显示当前金币数量

### 5. UI特性

#### 金币余额显示
- 大号金币图标
- 当前金币数量显示
- 金色主题设计

#### 购买选项
- 2x5网格布局
- 每个选项显示金币数量和价格
- 购买时显示loading动画
- 金色边框设计

#### 加载状态
- 全屏loading覆盖层
- 金色loading指示器
- 防止重复点击

## 产品列表

| 产品ID | 金币数量 | 价格 | 名称 |
|--------|----------|------|------|
| Jinglo | 32 | $0.99 | 32 coins |
| Jinglo2 | 96 | $2.99 | 96 coins |
| Jinglo5 | 189 | $5.99 | 189 coins |
| Jinglo9 | 359 | $9.99 | 359 coins |
| Jinglo19 | 729 | $19.99 | 729 coins |
| Jinglo49 | 1869 | $49.99 | 1869 coins |
| Jinglo99 | 3799 | $99.99 | 3799 coins |
| Jinglo159 | 5999 | $159.99 | 5999 coins |
| Jinglo239 | 9059 | $239.99 | 9059 coins |

## 文件结构

```
lib/
├── pages/
│   └── wallet_page.dart          # 钱包页面（金币购买）
├── services/
│   └── user_service.dart         # 用户服务（可扩展金币管理）
└── models/
    └── user_info.dart            # 用户信息模型（可扩展金币字段）
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
   - 包含9个一次性付费产品

2. **App Store Connect配置**
   - 产品ID：从Jinglo到Jinglo239
   - 价格：$0.99到$239.99
   - 类型：一次性付费（Consumable）

## 使用说明

### 开发者测试

1. 在Xcode中打开项目
2. 选择StoreKit配置文件
3. 运行应用进行测试购买

### 用户使用

1. 进入个人页面
2. 点击钱包图标
3. 查看当前金币余额
4. 选择要购买的金币数量
5. 点击购买按钮
6. 完成苹果支付
7. 金币立即添加到账户

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
- 本地存储金币余额
- 无服务器端验证（简化实现）
- 生产环境建议添加服务器验证

## 与VIP功能的区别

| 特性 | VIP功能 | 金币功能 |
|------|---------|----------|
| 产品类型 | 非续费订阅 | 一次性付费 |
| 购买方式 | `buyNonConsumable` | `buyConsumable` |
| 状态管理 | VIP激活状态 | 金币余额 |
| 恢复购买 | 恢复VIP状态 | 恢复金币余额 |
| 重复购买 | 不能重复购买 | 可以重复购买 |

## 未来优化

1. 添加服务器端验证
2. 实现金币消费功能
3. 添加金币历史记录
4. 实现金币赠送功能
5. 添加金币兑换功能
6. 实现金币过期机制
7. 添加金币使用统计
8. 实现金币促销活动 