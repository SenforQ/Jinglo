import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import '../models/user_info.dart';

class UserService {
  static const String _userInfoKey = 'user_info';
  
  // 全局事件流控制器，用于通知用户状态变化
  static final StreamController<String> _userActionController = StreamController<String>.broadcast();
  
  // 获取用户操作事件流
  static Stream<String> get userActionStream => _userActionController.stream;
  
  // 发送用户操作事件
  static void _notifyUserAction(String action) {
    _userActionController.add(action);
  }

  // 获取用户信息
  static Future<UserInfo> getUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    final userInfoJson = prefs.getString(_userInfoKey);
    
    UserInfo userInfo;
    if (userInfoJson != null) {
      try {
        final jsonMap = json.decode(userInfoJson) as Map<String, dynamic>;
        userInfo = UserInfo.fromJson(jsonMap);
      } catch (e) {
        // 如果解析失败，返回默认用户信息
        userInfo = UserInfo.defaultUser;
      }
    } else {
      // 如果没有保存的用户信息，返回默认值并保存
      userInfo = UserInfo.defaultUser;
      await saveUserInfo(userInfo);
    }
    
    // 动态计算关注数
    final followedUsers = await getFollowedUsers();
    final updatedUserInfo = userInfo.copyWith(following: followedUsers.length);
    
    // 如果关注数发生变化，更新保存的用户信息
    if (updatedUserInfo.following != userInfo.following) {
      await saveUserInfo(updatedUserInfo);
    }
    
    return updatedUserInfo;
  }

  // 保存用户信息
  static Future<void> saveUserInfo(UserInfo userInfo) async {
    final prefs = await SharedPreferences.getInstance();
    final userInfoJson = json.encode(userInfo.toJson());
    await prefs.setString(_userInfoKey, userInfoJson);
  }

  // 更新用户信息
  static Future<void> updateUserInfo({
    String? avatar,
    String? name,
    String? signature,
    int? followers,
    int? following,
  }) async {
    final currentUser = await getUserInfo();
    final updatedUser = currentUser.copyWith(
      avatar: avatar,
      name: name,
      signature: signature,
      followers: followers,
      following: following,
    );
    await saveUserInfo(updatedUser);
  }

  // 清除用户信息（重置为默认值）
  static Future<void> clearUserInfo() async {
    await saveUserInfo(UserInfo.defaultUser);
  }

  // 检查是否为本地文件
  static bool isLocalFile(String path) {
    return path.startsWith('avatars/');
  }

  // 获取绝对路径
  static Future<String> getAbsolutePath(String relativePath) async {
    final appDir = await getApplicationDocumentsDirectory();
    return '${appDir.path}/$relativePath';
  }

  // 拉黑用户管理
  static const String _blockedUsersKey = 'blocked_users';
  static const String _hiddenUsersKey = 'hidden_users';

  // 添加拉黑用户
  static Future<void> blockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = prefs.getStringList(_blockedUsersKey) ?? [];
    if (!blockedUsers.contains(userId)) {
      blockedUsers.add(userId);
      await prefs.setStringList(_blockedUsersKey, blockedUsers);
      // 通知其他页面刷新数据
      _notifyUserAction('user_blocked');
    }
  }

  // 移除拉黑用户
  static Future<void> unblockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = prefs.getStringList(_blockedUsersKey) ?? [];
    blockedUsers.remove(userId);
    await prefs.setStringList(_blockedUsersKey, blockedUsers);
  }

  // 检查用户是否被拉黑
  static Future<bool> isUserBlocked(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = prefs.getStringList(_blockedUsersKey) ?? [];
    return blockedUsers.contains(userId);
  }

  // 获取所有拉黑用户列表
  static Future<List<String>> getBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_blockedUsersKey) ?? [];
  }

  // 添加屏蔽用户
  static Future<void> hideUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final hiddenUsers = prefs.getStringList(_hiddenUsersKey) ?? [];
    if (!hiddenUsers.contains(userId)) {
      hiddenUsers.add(userId);
      await prefs.setStringList(_hiddenUsersKey, hiddenUsers);
      // 通知其他页面刷新数据
      _notifyUserAction('user_hidden');
    }
  }

  // 移除屏蔽用户
  static Future<void> unhideUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final hiddenUsers = prefs.getStringList(_hiddenUsersKey) ?? [];
    hiddenUsers.remove(userId);
    await prefs.setStringList(_hiddenUsersKey, hiddenUsers);
  }

  // 检查用户是否被屏蔽
  static Future<bool> isUserHidden(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final hiddenUsers = prefs.getStringList(_hiddenUsersKey) ?? [];
    return hiddenUsers.contains(userId);
  }

  // 获取所有屏蔽用户列表
  static Future<List<String>> getHiddenUsers() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_hiddenUsersKey) ?? [];
  }

  // 关注用户管理
  static const String _followedUsersKey = 'followed_users';

  // 添加关注用户
  static Future<void> followUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final followedUsers = prefs.getStringList(_followedUsersKey) ?? [];
    if (!followedUsers.contains(userId)) {
      followedUsers.add(userId);
      await prefs.setStringList(_followedUsersKey, followedUsers);
      // 通知其他页面刷新数据
      _notifyUserAction('user_followed');
    }
  }

  // 取消关注用户
  static Future<void> unfollowUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final followedUsers = prefs.getStringList(_followedUsersKey) ?? [];
    followedUsers.remove(userId);
    await prefs.setStringList(_followedUsersKey, followedUsers);
    // 通知其他页面刷新数据
    _notifyUserAction('user_unfollowed');
  }

  // 检查用户是否被关注
  static Future<bool> isUserFollowed(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final followedUsers = prefs.getStringList(_followedUsersKey) ?? [];
    return followedUsers.contains(userId);
  }

  // 获取所有关注用户列表
  static Future<List<String>> getFollowedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_followedUsersKey) ?? [];
  }

  // 过滤用户列表（移除拉黑和屏蔽的用户）
  static Future<List<Map<String, dynamic>>> filterUsers(List<Map<String, dynamic>> users) async {
    final blockedUsers = await getBlockedUsers();
    final hiddenUsers = await getHiddenUsers();
    
    debugPrint('Filtering users: blocked=${blockedUsers.length}, hidden=${hiddenUsers.length}');
    debugPrint('Blocked users: $blockedUsers');
    debugPrint('Hidden users: $hiddenUsers');
    
    final filteredUsers = users.where((user) {
      final userId = user['JingloUserName'] ?? '';
      final isBlocked = blockedUsers.contains(userId);
      final isHidden = hiddenUsers.contains(userId);
      
      if (isBlocked || isHidden) {
        debugPrint('Filtering out user: $userId (blocked: $isBlocked, hidden: $isHidden)');
      }
      
      return !isBlocked && !isHidden;
    }).toList();
    
    debugPrint('Filtered ${users.length} users to ${filteredUsers.length} users');
    return filteredUsers;
  }

  // 视频评论管理
  static const String _videoCommentsPrefix = 'video_comments_';

  // 获取视频评论
  static Future<List<Map<String, dynamic>>> getVideoComments(String videoId) async {
    final prefs = await SharedPreferences.getInstance();
    final commentsKey = '$_videoCommentsPrefix$videoId';
    final commentsJson = prefs.getString(commentsKey);
    
    if (commentsJson != null) {
      try {
        final List<dynamic> commentsList = json.decode(commentsJson);
        return commentsList.cast<Map<String, dynamic>>();
      } catch (e) {
        debugPrint('Error parsing video comments: $e');
        return [];
      }
    }
    
    return [];
  }

  // 保存视频评论
  static Future<void> saveVideoComments(String videoId, List<Map<String, dynamic>> comments) async {
    final prefs = await SharedPreferences.getInstance();
    final commentsKey = '$_videoCommentsPrefix$videoId';
    final commentsJson = json.encode(comments);
    await prefs.setString(commentsKey, commentsJson);
  }

  // 删除视频评论
  static Future<void> deleteVideoComments(String videoId) async {
    final prefs = await SharedPreferences.getInstance();
    final commentsKey = '$_videoCommentsPrefix$videoId';
    await prefs.remove(commentsKey);
  }
} 