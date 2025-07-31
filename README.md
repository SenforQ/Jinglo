# Jinglo

一个基于Flutter开发的移动应用，具有现代化的UI设计和自定义tabbar。

## 功能特性

- 🎨 现代化UI设计，使用主题色 #2F132E
- 📱 自定义胶囊样式tabbar，背景色 #43393F
- 🖼️ 每个页面都有背景图片支持
- 📱 支持iOS 13+ 和 Android
- 🎯 4个主要功能页面：首页、发现、设置、消息

## 技术规格

- **最低iOS版本**: 13.0
- **Flutter版本**: 3.32.5+
- **Dart版本**: 3.0+
- **主题色**: #2F132E
- **Tabbar背景色**: #43393F

## Tabbar设计

- 胶囊样式设计
- 宽度：屏幕宽度 - 48px
- 高度：58px
- 位置：距离底部12px，水平居中
- 4个tab图标，支持普通状态和高亮状态

## 页面结构

1. **首页** - 主要功能入口
2. **发现** - 内容发现页面
3. **设置** - 应用设置页面
4. **消息** - 个人中心页面（包含用户信息展示）

### 页面特性
- **首页、发现、设置页面**：
  - 背景图片：`content_background_20250724.png`
  - 自适应内容布局
  - 白色文字显示

- **消息页面**：
  - 背景颜色：#2F132E
  - 顶部背景图片：`img_me_bg_20250724.png`
  - 用户信息展示（头像、姓名、签名、粉丝数）
  - 本地持久化用户信息存储

## 运行项目

```bash
# 获取依赖
flutter pub get

# 运行应用
flutter run

# 构建发布版本
flutter build ios
flutter build apk
```

## 项目结构

```
lib/
├── main.dart          # 主应用入口
├── models/            # 数据模型
│   └── user_info.dart     # 用户信息模型
├── services/          # 服务层
│   └── user_service.dart  # 用户信息服务
├── pages/             # 页面文件目录
│   ├── home_page.dart      # 首页
│   ├── discover_page.dart  # 发现页
│   ├── settings_page.dart  # 设置页
│   └── message_page.dart   # 消息页
assets/
├── content_background_20250724.png    # 页面背景图片
├── img_me_bg_20250724.png            # 设置页背景图片
├── user_default_20250724.png         # 默认用户头像
├── tab_tab_1_nor_20250724.png        # Tab1 普通状态图标
├── tab_tab_1_pre_20250724.png        # Tab1 高亮状态图标
├── tab_tab_2_nor_20250724.png        # Tab2 普通状态图标
├── tab_tab_2_pre_20250724.png        # Tab2 高亮状态图标
├── tab_tab_3_nor_20250724.png        # Tab3 普通状态图标
├── tab_tab_3_pre_20250724.png        # Tab3 高亮状态图标
├── tab_tab_4_nor_20250724.png        # Tab4 普通状态图标
└── tab_tab_4_pre_20250724.png        # Tab4 高亮状态图标
```

## 开发说明

- 使用Material 3设计系统
- 自定义tabbar组件，支持状态切换
- 响应式布局设计
- 支持深色/浅色主题切换
- 本地持久化用户信息存储系统

## 用户信息系统

### 功能特性
- 本地持久化存储用户信息
- 默认用户信息自动初始化
- 支持头像、姓名、个性签名的管理
- 粉丝数和关注数统计

### 默认用户信息
- 头像：`user_default_20250724.png`
- 姓名：Jinglo985
- 个性签名：暂时没有想到好的签名..
- 粉丝数：0
- 关注数：0

### 技术实现
- 使用 `shared_preferences` 进行本地存储
- 数据模型：`UserInfo` 类
- 服务层：`UserService` 类
- 支持JSON序列化和反序列化
