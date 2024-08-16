enum MessageType {
  text,
  image,
  video,
  audio,
}

class Message {
  final String id;
  final String senderId;
  final String receiverId;
  final MessageType type;
  final String content; // For text, URL for media
  final DateTime timestamp;
  final bool isRead;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.type,
    required this.content,
    required this.timestamp,
    this.isRead = false,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      type: MessageType.values[json['type']],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
      isRead: json['isRead'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'type': type.index,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
      'isRead': isRead,
    };
  }
}
