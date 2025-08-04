import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';
import 'dart:async';
import '../models/user_info.dart';
import '../services/user_service.dart';

class EditorInfoPage extends StatefulWidget {
  const EditorInfoPage({super.key});

  @override
  State<EditorInfoPage> createState() => _EditorInfoPageState();
}

class _EditorInfoPageState extends State<EditorInfoPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _signatureController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  
  UserInfo? _userInfo;
  String? _selectedAvatarPath;
  bool _isLoading = false;
  bool _isVip = false;

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _signatureController.dispose();
    super.dispose();
  }

  Future<void> _loadUserInfo() async {
    try {
      final userInfo = await UserService.getUserInfo();
      setState(() {
        _userInfo = userInfo;
        _isVip = userInfo.isVip;
        _nameController.text = userInfo.name;
        _signatureController.text = userInfo.signature;
      });
    } catch (e) {
      setState(() {
        _userInfo = UserInfo.defaultUser;
        _nameController.text = UserInfo.defaultUser.name;
        _signatureController.text = UserInfo.defaultUser.signature;
      });
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 85,
      );
      
      if (image != null) {
        setState(() {
          _selectedAvatarPath = image.path;
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      Fluttertoast.showToast(
        msg: 'Failed to pick image. Please try again.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: const Color(0xFFFF6B6B),
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  void _showImagePickerDialog() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF2F132E),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Choose Avatar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageOption(
                    icon: Icons.camera_alt,
                    label: 'Camera',
                    onTap: () {
                      Navigator.pop(context);
                      _pickImage(ImageSource.camera);
                    },
                  ),
                  _buildImageOption(
                    icon: Icons.photo_library,
                    label: 'Gallery',
                    onTap: () {
                      Navigator.pop(context);
                      _pickImage(ImageSource.gallery);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImageOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0xFF591C47),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveUserInfo() async {
    if (!_isVip) {
      // 非VIP用户显示提示
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xFF2F132E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            title: const Text(
              'VIP Required',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: const Text(
              'Only VIP members can edit their profile information. Please upgrade to VIP to access this feature.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/vip');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF43AB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Upgrade to VIP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final name = _nameController.text.trim();
      final signature = _signatureController.text.trim();

      // 验证输入
      if (name.isEmpty) {
        Fluttertoast.showToast(
          msg: 'Please enter your name',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: const Color(0xFFFF6B6B),
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return;
      }

      if (name.length > 20) {
        Fluttertoast.showToast(
          msg: 'Name cannot exceed 20 characters',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: const Color(0xFFFF6B6B),
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return;
      }

      if (signature.length > 100) {
        Fluttertoast.showToast(
          msg: 'Signature cannot exceed 100 characters',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: const Color(0xFFFF6B6B),
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return;
      }

      // 处理头像路径
      String avatarPath = _userInfo?.avatar ?? 'assets/user_default_20250724.png';
      if (_selectedAvatarPath != null) {
        // 如果是新选择的图片，保存到本地并更新路径
        final fileName = 'avatars/avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';
        final appDir = await UserService.getAbsolutePath('');
        final avatarDir = Directory('$appDir/avatars');
        if (!await avatarDir.exists()) {
          await avatarDir.create(recursive: true);
        }
        
        final newPath = await UserService.getAbsolutePath(fileName);
        await File(_selectedAvatarPath!).copy(newPath);
        avatarPath = fileName;
      }

      // 更新用户信息
      await UserService.updateUserInfo(
        avatar: avatarPath,
        name: name,
        signature: signature,
      );

      // 通知其他页面刷新
      UserService.notifyUserAction('profile_updated');

      Fluttertoast.showToast(
        msg: 'Profile updated successfully!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: const Color(0xFF4CAF50),
        textColor: Colors.white,
        fontSize: 16.0,
      );

      // 返回上一页
      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      debugPrint('Error saving user info: $e');
      Fluttertoast.showToast(
        msg: 'Failed to save profile. Please try again.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: const Color(0xFFFF6B6B),
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F132E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F132E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Editor Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _userInfo == null
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // VIP状态提示
                  if (!_isVip)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF6B6B).withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFFFF6B6B),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.info_outline,
                            color: Color(0xFFFF6B6B),
                            size: 24,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: const Text(
                              'VIP membership required to edit profile',
                              style: TextStyle(
                                color: Color(0xFFFF6B6B),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  // 头像选择区域
                  GestureDetector(
                    onTap: _isVip ? _showImagePickerDialog : null,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: _isVip 
                                  ? const Color(0xFFFF43AB)
                                  : Colors.grey.withValues(alpha: 0.5),
                              width: 3,
                            ),
                          ),
                          child: ClipOval(
                            child: _selectedAvatarPath != null
                                ? Image.file(
                                    File(_selectedAvatarPath!),
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return _buildAvatarImage(
                                        _userInfo?.avatar ?? 'assets/user_default_20250724.png',
                                        120,
                                        120,
                                      );
                                    },
                                  )
                                : _buildAvatarImage(
                                    _userInfo?.avatar ?? 'assets/user_default_20250724.png',
                                    120,
                                    120,
                                  ),
                          ),
                        ),
                        if (_isVip)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF43AB),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (_isVip)
                    const Text(
                      'Tap to change avatar',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  const SizedBox(height: 30),

                  // 姓名输入
                  _buildInputField(
                    label: 'Name',
                    controller: _nameController,
                    hintText: 'Enter your name',
                    maxLength: 20,
                    enabled: _isVip,
                  ),
                  const SizedBox(height: 20),

                  // 个性签名输入
                  _buildInputField(
                    label: 'Signature',
                    controller: _signatureController,
                    hintText: 'Enter your signature',
                    maxLength: 100,
                    maxLines: 3,
                    enabled: _isVip,
                  ),
                  const SizedBox(height: 40),

                  // 保存按钮（仅VIP显示）
                  if (_isVip)
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _saveUserInfo,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF43AB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: _isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                ),
                              )
                            : const Text(
                                'Save Changes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                ],
              ),
            ),
    );
  }

  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    required String hintText,
    int? maxLength,
    int maxLines = 1,
    bool enabled = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: enabled ? Colors.white : Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          enabled: enabled,
          maxLength: maxLength,
          maxLines: maxLines,
          style: TextStyle(
            color: enabled ? Colors.white : Colors.grey,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 0.6),
              fontSize: 16,
            ),
            filled: true,
            fillColor: enabled 
                ? const Color(0xFF591C47)
                : const Color(0xFF591C47).withValues(alpha: 0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            counterStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAvatarImage(String avatarPath, double width, double height) {
    // 检查是否是本地文件路径
    if (UserService.isLocalFile(avatarPath)) {
      // 使用FutureBuilder来处理异步路径获取
      return FutureBuilder<String>(
        future: UserService.getAbsolutePath(avatarPath),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Image.file(
              File(snapshot.data!),
              width: width,
              height: height,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                debugPrint('Error loading avatar file: $error');
                return Image.asset(
                  'assets/user_default_20250724.png',
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                );
              },
            );
          } else {
            // 加载中显示默认头像
            return Image.asset(
              'assets/user_default_20250724.png',
              width: width,
              height: height,
              fit: BoxFit.cover,
            );
          }
        },
      );
    } else {
      // 使用asset图片
      return Image.asset(
        avatarPath,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          debugPrint('Error loading avatar asset: $error');
          return Image.asset(
            'assets/user_default_20250724.png',
            width: width,
            height: height,
            fit: BoxFit.cover,
          );
        },
      );
    }
  }
} 