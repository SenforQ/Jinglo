class UserInfo {
  final String avatar;
  final String name;
  final String signature;
  final int followers;
  final int following;
  final bool isVip;

  UserInfo({
    required this.avatar,
    required this.name,
    required this.signature,
    required this.followers,
    required this.following,
    this.isVip = false,
  });

  // 默认用户信息
  static UserInfo get defaultUser => UserInfo(
    avatar: 'assets/user_default_20250724.png',
    name: 'Jinglo985',
    signature: 'Love dancing is like love life',
    followers: 0,
    following: 0,
    isVip: false,
  );

  // 从JSON转换为UserInfo对象
  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      avatar: json['avatar'] ?? 'assets/user_default_20250724.png',
      name: json['name'] ?? 'Jinglo985',
      signature: json['signature'] ?? 'Love dancing is like love life',
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
      isVip: json['isVip'] ?? false,
    );
  }

  // 转换为JSON
  Map<String, dynamic> toJson() {
    return {
      'avatar': avatar,
      'name': name,
      'signature': signature,
      'followers': followers,
      'following': following,
      'isVip': isVip,
    };
  }

  // 复制并更新部分字段
  UserInfo copyWith({
    String? avatar,
    String? name,
    String? signature,
    int? followers,
    int? following,
    bool? isVip,
  }) {
    return UserInfo(
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
      signature: signature ?? this.signature,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      isVip: isVip ?? this.isVip,
    );
  }
} 