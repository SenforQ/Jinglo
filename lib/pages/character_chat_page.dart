import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:io';
import '../models/chat_message.dart';
import '../models/user_info.dart';
import '../services/user_service.dart';

class CharacterChatPage extends StatefulWidget {
  final Map<String, dynamic> character;

  const CharacterChatPage({
    super.key,
    required this.character,
  });

  @override
  State<CharacterChatPage> createState() => _CharacterChatPageState();
}

class _CharacterChatPageState extends State<CharacterChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  bool _isLoading = false;
  UserInfo? _userInfo;

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
    _loadChatHistory();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  // 加载用户信息
  Future<void> _loadUserInfo() async {
    final userInfo = await UserService.getUserInfo();
    setState(() {
      _userInfo = userInfo;
    });
  }

  // 加载聊天历史
  Future<void> _loadChatHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final characterId = widget.character['WeevaUserName'] ?? '';
      final chatKey = 'chat_history_$characterId';
      final chatHistoryJson = prefs.getString(chatKey);
      
      if (chatHistoryJson != null) {
        final List<dynamic> chatHistory = json.decode(chatHistoryJson);
        final List<ChatMessage> messages = chatHistory
            .map((json) => ChatMessage.fromJson(json))
            .toList();
        
        setState(() {
          _messages.clear();
          _messages.addAll(messages);
        });
      } else {
        // 如果没有聊天历史，添加角色主动打招呼
        _addCharacterGreeting();
      }
      
      // 滚动到底部
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToBottom();
      });
    } catch (e) {
      debugPrint('Error loading chat history: $e');
      // 如果加载失败，也添加角色打招呼
      _addCharacterGreeting();
    }
  }

  // 添加角色主动打招呼
  void _addCharacterGreeting() {
    final characterName = widget.character['JingloNickName'] ?? 'Dancer';
    final greeting = widget.character['WeevaShowPeople']?['greeting'] ?? 
        'Hi! I\'m $characterName. Nice to meet you! Let\'s talk about dance! 💃';
    
    final greetingMessage = ChatMessage.assistant(greeting);
    
    setState(() {
      _messages.add(greetingMessage);
    });
    
    // 保存聊天历史
    _saveChatHistory();
  }

  // 保存聊天历史
  Future<void> _saveChatHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final characterId = widget.character['WeevaUserName'] ?? '';
      final chatKey = 'chat_history_$characterId';
      final chatHistoryJson = json.encode(_messages.map((msg) => msg.toJson()).toList());
      await prefs.setString(chatKey, chatHistoryJson);
    } catch (e) {
      debugPrint('Error saving chat history: $e');
    }
  }

  // 发送消息
  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty || _isLoading) return;

    final userMessage = ChatMessage.user(message);

    setState(() {
      _messages.add(userMessage);
      _isLoading = true;
    });

    _messageController.clear();
    _scrollToBottom();
    _saveChatHistory();

    // 模拟角色回复
    await _simulateCharacterResponse();
  }

  // 模拟角色回复
  Future<void> _simulateCharacterResponse() async {
    // 模拟网络延迟
    await Future.delayed(const Duration(seconds: 1));
    
    final responses = [
      'That\'s interesting! I love talking about dance! 💃',
      'Great question! Let me share my thoughts on that.',
      'I\'m so excited to chat with you about dancing!',
      'That reminds me of a dance move I learned recently.',
      'You have such great insights about dance!',
      'I\'d love to show you some dance techniques sometime!',
    ];
    
    final randomResponse = responses[DateTime.now().millisecondsSinceEpoch % responses.length];
    
    final characterMessage = ChatMessage.assistant(randomResponse);

    if (mounted) {
      setState(() {
        _messages.add(characterMessage);
        _isLoading = false;
      });
      
      _scrollToBottom();
      _saveChatHistory();
    }
  }

  // 滚动到底部
  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/content_background_20250724.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 顶部导航栏
              _buildTopNavigationBar(),
              // 聊天消息区域
              Expanded(
                child: _buildChatArea(),
              ),
              // 输入区域
              _buildInputArea(),
            ],
          ),
        ),
      ),
    );
  }

  // 顶部导航栏
  Widget _buildTopNavigationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 角色头像
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFFF43AB),
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.character['JingloUserIcon'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 角色信息
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.character['JingloNickName'] ?? 'Dancer',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 聊天区域
  Widget _buildChatArea() {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      itemCount: _messages.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == _messages.length && _isLoading) {
          return _buildTypingIndicator();
        }
        return _buildMessageBubble(_messages[index]);
      },
    );
  }

  // 消息气泡
  Widget _buildMessageBubble(ChatMessage message) {
    final isUser = message.type == MessageType.user;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isUser) ...[
            // 角色头像
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFF43AB),
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  widget.character['JingloUserIcon'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          // 消息内容
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: isUser 
                    ? const Color(0xFFFF43AB)
                    : Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isUser 
                      ? const Color(0xFFFF43AB)
                      : Colors.white.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Text(
                message.content,
                style: TextStyle(
                  color: isUser ? Colors.white : Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          if (isUser) ...[
            // 用户头像
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFF43AB),
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: _buildUserAvatar(),
              ),
            ),
          ],
        ],
      ),
    );
  }

  // 用户头像
  Widget _buildUserAvatar() {
    if (_userInfo?.avatar == null) {
      return Image.asset(
        'assets/user_default_20250724.png',
        fit: BoxFit.cover,
      );
    }
    
    if (UserService.isLocalFile(_userInfo!.avatar)) {
      return FutureBuilder<String>(
        future: UserService.getAbsolutePath(_userInfo!.avatar),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Image.file(
              File(snapshot.data!),
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/user_default_20250724.png',
                  fit: BoxFit.cover,
                );
              },
            );
          }
          return Image.asset(
            'assets/user_default_20250724.png',
            fit: BoxFit.cover,
          );
        },
      );
    }
    
    return Image.asset(
      _userInfo!.avatar,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(
          'assets/user_default_20250724.png',
          fit: BoxFit.cover,
        );
      },
    );
  }

  // 输入中指示器
  Widget _buildTypingIndicator() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          // 角色头像
          Container(
            width: 32,
            height: 32,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFFF43AB),
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                widget.character['JingloUserIcon'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 输入指示器
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Color(0xFFFF43AB),
                    strokeWidth: 2,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Typing...',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 输入区域
  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.3),
        border: Border(
          top: BorderSide(
            color: Colors.white.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // 输入框
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: TextField(
                controller: _messageController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Type a message...',
                  hintStyle: TextStyle(color: Colors.white60),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                onSubmitted: (_) => _sendMessage(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 发送按钮
          GestureDetector(
            onTap: _sendMessage,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFFF43AB),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF43AB).withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(
                Icons.send,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 