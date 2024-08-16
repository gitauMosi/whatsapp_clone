import 'package:whatsapp/models/message_model.dart';

class Chat {
  final String id;
  final String userId1;
  final String userId2;
  final List<Message> messages;

  Chat({
    required this.id,
    required this.userId1,
    required this.userId2,
    required this.messages,
  });

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'],
      userId1: json['userId1'],
      userId2: json['userId2'],
      messages: (json['messages'] as List<dynamic>)
          .map((messageJson) => Message.fromJson(messageJson as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId1': userId1,
      'userId2': userId2,
      'messages': messages.map((message) => message.toJson()).toList(),
    };
  }
}
