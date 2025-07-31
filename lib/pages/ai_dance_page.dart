import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import '../models/chat_message.dart';
import '../models/user_info.dart';
import '../services/zhipu_ai_service.dart';
import '../services/user_service.dart';

class AiDancePage extends StatefulWidget {
  const AiDancePage({super.key});

  @override
  State<AiDancePage> createState() => _AiDancePageState();
}

class _AiDancePageState extends State<AiDancePage> with AutomaticKeepAliveClientMixin {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  bool _isLoading = false;
  bool _showChat = false;
  UserInfo? _userInfo;

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadUserInfo() async {
    try {
      final userInfo = await UserService.getUserInfo();
      setState(() {
        _userInfo = userInfo;
      });
    } catch (e) {
      setState(() {
        _userInfo = UserInfo.defaultUser;
      });
    }
  }

  Future<void> _saveChatHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final chatKey = 'chat_molly_dance';
    final chatHistory = json.encode(_messages.map((m) => m.toJson()).toList());
    await prefs.setString(chatKey, chatHistory);
  }

  Future<void> _loadChatHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final chatKey = 'chat_molly_dance';
    final chatHistory = prefs.getString(chatKey);
    
    if (chatHistory != null) {
      try {
        final List<dynamic> jsonList = json.decode(chatHistory);
        final List<ChatMessage> messages = jsonList
            .map((json) => ChatMessage.fromJson(json))
            .toList();
        
        setState(() {
          _messages.clear(); // 清空现有消息，避免重复
          _messages.addAll(messages);
        });
        debugPrint('Loaded ${messages.length} messages from history');
      } catch (e) {
        debugPrint('Error loading chat history: $e');
      }
    } else {
      debugPrint('No chat history found');
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _startChat(String question) async {
    setState(() {
      _showChat = true;
    });
    
    // 加载聊天历史
    await _loadChatHistory();
    
    // 如果没有聊天历史，添加欢迎消息
    if (_messages.isEmpty) {
      setState(() {
        _messages.add(
          ChatMessage.assistant(
            "Hey~ I am Molly, your AI dancing elf! 🎭✨\n\nI'm here to help you learn and improve your dancing skills. Whether you're a complete beginner or looking to master new moves, I've got you covered!\n\nWhat would you like to learn today?",
          ),
        );
      });
      
      // 保存聊天历史
      await _saveChatHistory();
      debugPrint('Added welcome message and saved to history');
    } else {
      debugPrint('Chat history loaded with ${_messages.length} messages');
    }
    
    // 自动发送用户问题
    _sendPresetMessage(question);
  }

  void _sendPresetMessage(String message) {
    // 直接发送消息，不设置到输入框
    _sendMessageInternal(message, clearInput: false);
  }

  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty || _isLoading) return;
    
    _sendMessageInternal(message, clearInput: true);
  }
  
  Future<void> _sendMessageInternal(String message, {required bool clearInput}) async {
    if (message.isEmpty || _isLoading) {
      debugPrint('Message is empty or already loading, skipping...');
      return;
    }

    debugPrint('Sending message: $message');
    debugPrint('Current messages count: ${_messages.length}');

    // Add user message
    final userMessage = ChatMessage.user(message);
    setState(() {
      _messages.add(userMessage);
      _isLoading = true;
    });
    debugPrint('Added user message, total messages: ${_messages.length}');
    
    if (clearInput) {
      _messageController.clear();
    }
    _scrollToBottom();

    // 不添加loading消息，只在发送按钮上显示loading效果
    debugPrint('Not adding loading message, total messages: ${_messages.length}');
    _scrollToBottom();

    try {
      // Prepare conversation history for API (excluding the current user message and loading messages)
      List<Map<String, String>> chatHistory = [];
      
      // Add conversation history (excluding loading messages and the current user message)
      for (int i = 0; i < _messages.length - 2; i++) { // -2 to exclude current user message and loading message
        var msg = _messages[i];
        if (!msg.isLoading && msg.type != MessageType.system) {
          chatHistory.add({
            'role': msg.type == MessageType.user ? 'user' : 'assistant',
            'content': msg.content,
          });
        }
      }

      debugPrint('Chat history count: ${chatHistory.length}');

      // Send to AI with 30 second timeout
      final response = await ZhipuAIService.sendMessage(
        message: message,
        characterName: 'Molly',
        characterBackground: ZhipuAIService.getSystemPrompt(),
        chatHistory: chatHistory,
      ).timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          debugPrint('AI request timeout after 30 seconds');
          throw TimeoutException('Request timeout, please try again later');
        },
      );

      debugPrint('AI response: $response');

      // 不需要删除loading消息，因为我们没有添加

      // Only add AI response if we have valid content
      if (response != null && response.isNotEmpty && response.trim().isNotEmpty) {
        // Add AI response
        final aiMessage = ChatMessage.assistant(response);
        setState(() {
          _messages.add(aiMessage);
        });
        debugPrint('Added AI response message: ${response.length} characters');
      } else {
        debugPrint('AI response is null, empty, or only whitespace - not adding any message');
        // Don't add any message, just show toast
        if (mounted) {
          Fluttertoast.showToast(
            msg: 'Failed to get response from AI',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            backgroundColor: const Color(0xFF2F2F2F),
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      }
    } catch (e) {
      debugPrint('Error in _sendMessageInternal: $e');
      
      // 不需要删除loading消息，因为我们没有添加

      // Handle different types of errors
      String errorText = 'Please try again later, the server is currently busy';
      
      if (e is TimeoutException) {
        errorText = 'Please try again later, the server is currently busy';
      } else if (e.toString().contains('SocketException') || 
                 e.toString().contains('NetworkException')) {
        errorText = 'Network connection failed, please check your network and try again';
      }

      // Show error message
      final errorMessage = ChatMessage.assistant(errorText);
      setState(() {
        _messages.add(errorMessage);
      });
      
      // Show error toast
      if (mounted) {
        Fluttertoast.showToast(
          msg: 'Network error: $e',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: const Color(0xFF2F2F2F),
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
      _scrollToBottom();
      
      // Save chat history
      await _saveChatHistory();
      debugPrint('Final messages count: ${_messages.length}');
    }
  }

  @override
  Widget build(BuildContext context) {
    // 获取屏幕高度
    final screenHeight = MediaQuery.of(context).size.height;
    
    // 计算图片尺寸
    final imageHeight = (screenHeight / 812) * 296;
    final imageWidth = (screenHeight / 812) * 263;

    return Scaffold(
      backgroundColor: const Color(0xFF2F132E),
      body: SafeArea(
        child: Stack(
          children: [
            // 主要内容区域
            Column(
              children: [
                // 顶部图片，y:0 居中
                Container(
                  width: imageWidth,
                  height: imageHeight,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/ai_top_talk_20250724.png',
                    width: imageWidth,
                    height: imageHeight,
                    fit: BoxFit.contain,
                  ),
                ),
                
                // 内容区域
                Expanded(
                  child: _showChat ? _buildChatArea() : _buildPresetQuestions(),
                ),
                
                // 为输入区域预留空间（包括12px间距）
                if (_showChat) ...[
                  const SizedBox(height: 12), // 聊天区域和发送区域之间的间距
                  SizedBox(
                    height: MediaQuery.of(context).padding.top > 20 ? 80.0 : 104.0, // 刘海屏80px，非刘海屏104px
                  ),
                ],
              ],
            ),
            
            // 固定在底部的输入区域（在tabbar上方12px）
            if (_showChat) _buildFixedInputArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildPresetQuestions() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 第一个问题在y:0位置
          _buildPresetQuestionButton(
            "Recommended beginner-friendly dance",
          ),
          const SizedBox(height: 16),
          _buildPresetQuestionButton(
            "Recommend a suitable dance for me",
          ),
          const SizedBox(height: 16),
          _buildPresetQuestionButton(
            "How to learn to dance for beginners",
          ),
        ],
      ),
    );
  }

  Widget _buildPresetQuestionButton(String text) {
    return GestureDetector(
      onTap: () => _startChat(text),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF591C47),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400, // Regular
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFFFFFFFF),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatArea() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.only(bottom: 20),
        itemCount: _messages.length + (_isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _messages.length && _isLoading) {
            return _buildLoadingMessage();
          }
          return _buildMessageBubble(_messages[index]);
        },
      ),
    );
  }

  Widget _buildMessageBubble(ChatMessage message) {
    final isUser = message.type == MessageType.user;
    
    // If it's a loading message, show loading indicator instead of empty content
    if (message.isLoading) {
      return Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/applogo_20250724.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    }
    
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) ...[
            // Molly avatar
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/applogo_20250724.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
          
          // Message bubble
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isUser 
                    ? const Color(0xFFFF43AB)
                    : Colors.black.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                message.content,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          
          if (isUser) ...[
            const SizedBox(width: 8),
            // User avatar
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
                          child: ClipOval(
              child: _buildAvatarImage(
                _userInfo?.avatar ?? 'assets/user_default_20250724.png',
                40,
                40,
              ),
            ),
            ),
          ],
        ],
      ),
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

  Widget _buildLoadingMessage() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/applogo_20250724.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFixedInputArea() {
    // 检查是否是刘海屏设备
    final hasNotch = MediaQuery.of(context).padding.top > 20;
    final bottomOffset = hasNotch ? 48.0 : 80.0; // 刘海屏往上36px (12 + 36 = 48)，非刘海屏往上68px (12 + 68 = 80)
    
    return Positioned(
      bottom: bottomOffset,
      left: 16,
      right: 16,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF666666), // 浅灰色背景
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // 输入框
            Expanded(
              child: TextField(
                controller: _messageController,
                enabled: !_isLoading,
                style: TextStyle(
                  color: _isLoading ? Colors.grey : Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: _isLoading 
                      ? 'AI is thinking...'
                      : 'Do you have any questions for me~',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 16,
                  ),
                ),
                onSubmitted: _isLoading ? null : (_) => _sendMessage(),
              ),
            ),
            // 发送按钮
            GestureDetector(
              onTap: _isLoading ? null : _sendMessage,
              child: Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: _isLoading 
                      ? Colors.grey.withValues(alpha: 0.5)
                      : const Color(0xFFFF43AB),
                  borderRadius: BorderRadius.circular(20),
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
                    : const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 20,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 



 