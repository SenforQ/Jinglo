import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class ZhipuAIService {
  static const String _apiKey = 'c27befc26fcf4a17acb31e7a86239e1b.lai2XoW8xs8h7tgo';
  static const String _apiUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';

  /// 发送消息到智谱AI
  static Future<String?> sendMessage({
    required String message,
    String characterName = 'AI Assistant',
    String characterBackground = 'A helpful AI assistant that provides accurate and helpful responses.',
    List<Map<String, String>> chatHistory = const [],
  }) async {
    try {
      // 构建消息列表
      List<Map<String, String>> messages = [];
      
      // 添加角色设定
      messages.add({
        'role': 'system',
        'content': 'You are $characterName. $characterBackground Please respond in English.',
      });
      
      // 添加聊天历史
      messages.addAll(chatHistory);
      
      // 添加当前用户消息
      messages.add({
        'role': 'user',
        'content': message,
      });

      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          'model': 'glm-4-flash',
          'messages': messages,
          'stream': false,
          'temperature': 0.7,
          'max_tokens': 1000,
        }),
      );

      debugPrint('ZhipuAI: Response status: ${response.statusCode}');
      debugPrint('ZhipuAI: Response body: ${response.body}');
      
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        debugPrint('ZhipuAI: Parsed data: $data');
        
        if (data['choices'] != null && data['choices'].isNotEmpty) {
          final choice = data['choices'][0];
          final message = choice['message'];
          final content = message['content'];
          
          debugPrint('ZhipuAI: Content: $content');
          
          if (content != null && content.toString().isNotEmpty) {
            return content.toString();
          } else {
            debugPrint('ZhipuAI: Content is null or empty');
            return null;
          }
        } else {
          debugPrint('ZhipuAI: No choices in response');
          return null;
        }
      } else {
        debugPrint('API Error: ${response.statusCode} - ${response.body}');
        return null;
      }
    } catch (e) {
      debugPrint('Error sending message to Zhipu AI: $e');
      return null;
    }
  }

  /// 生成照片点评
  static Future<String?> generatePhotoComment() async {
    const List<String> photoComments = [
      "What a beautiful composition! I love how the light creates depth in this image. The color balance is quite harmonious.",
      "This photo has great visual impact! The perspective you've chosen really draws the viewer's eye. Have you considered adjusting the contrast slightly?",
      "Interesting subject matter! The way you've captured the details shows a good eye for photography. The lighting could be enhanced to bring out more texture.",
      "Nice shot! I can see you have a good sense of framing. The colors work well together, creating a pleasing visual harmony.",
      "This image has wonderful artistic potential! The composition follows the rule of thirds nicely. You might experiment with different angles next time.",
      "Great capture! The mood of this photo is very expressive. The shadows and highlights create an interesting dynamic.",
      "I appreciate the creativity in this shot! The way you've used space is quite effective. Consider how different lighting might change the atmosphere.",
      "This photo tells a story! The elements within the frame work together beautifully. The color palette is very pleasing to the eye.",
      "Wonderful artistic vision! The composition draws attention to the main subject effectively. The depth of field adds a professional touch.",
      "This is a captivating image! The way you've balanced the visual elements shows good artistic instinct. The overall tone is very appealing.",
    ];

    // 随机选择一个点评
    final random = DateTime.now().millisecondsSinceEpoch;
    return photoComments[random % photoComments.length];
  }



  // Get dance-specific system prompt
  static String getSystemPrompt() {
    return '''You are Molly, a professional AI dance instructor and dancing elf. You specialize in teaching various dance styles and helping people learn to dance.

Key characteristics:
- You are enthusiastic, encouraging, and patient
- You provide clear, step-by-step dance instructions
- You recommend appropriate dances based on skill level
- You give helpful tips for beginners
- You respond in English only
- You are knowledgeable about different dance styles (ballet, hip-hop, contemporary, jazz, etc.)

When responding:
- Be encouraging and supportive
- Provide practical advice
- Use clear, simple language
- Include specific dance recommendations when appropriate
- Always maintain a positive and helpful tone

Remember: You are a dance teacher, so focus on dance-related guidance and instruction.''';
  }
} 