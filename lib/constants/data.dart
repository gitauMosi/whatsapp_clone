import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/models/media_model.dart';
import 'package:whatsapp/models/message_model.dart';
import 'package:whatsapp/models/user_model.dart';

final List<User> sampleUsers = [
  User(
    id: 'user1',
    name: 'Joyce',
    phoneNumber: '+1234567890',
    profilePictureUrl: 'https://example.com/profile/alice.jpg',
    lastSeen: DateTime.now().subtract(const Duration(minutes: 10)),
  ),
  User(
    id: 'user2',
    name: 'Bob',
    phoneNumber: '+0987654321',
    profilePictureUrl: 'https://example.com/profile/bob.jpg',
    lastSeen: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  User(
    id: 'user3',
    name: 'Charlie',
    phoneNumber: '+1122334455',
    profilePictureUrl: 'https://example.com/profile/charlie.jpg',
    lastSeen: DateTime.now().subtract(const Duration(days: 1)),
  ),
];
final List<Message> sampleMessages = [
  Message(
    id: 'msg1',
    senderId: 'user1',
    receiverId: 'user2',
    type: MessageType.text,
    content: 'Hey Bob!',
    timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
    isRead: true,
  ),
  Message(
    id: 'msg2',
    senderId: 'user2',
    receiverId: 'user1',
    type: MessageType.text,
    content: 'Hello Alice!',
    timestamp: DateTime.now().subtract(const Duration(minutes: 4)),
    isRead: false,
  ),
  Message(
    id: 'msg3',
    senderId: 'user1',
    receiverId: 'user2',
    type: MessageType.image,
    content: 'https://example.com/images/pic.jpg',
    timestamp: DateTime.now().subtract(const Duration(minutes: 3)),
    isRead: false,
  ),
];
final List<Chat> sampleChats = [
  Chat(
    id: 'chat1',
    userId1: 'user1',
    userId2: 'user2',
    messages: [
      Message(
        id: 'msg1',
        senderId: 'user1',
        receiverId: 'user2',
        type: MessageType.text,
        content: 'Hey Bob!',
        timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
        isRead: true,
      ),
      Message(
        id: 'msg2',
        senderId: 'user2',
        receiverId: 'user1',
        type: MessageType.text,
        content: 'Hello Alice!',
        timestamp: DateTime.now().subtract(const Duration(minutes: 4)),
        isRead: false,
      ),
      Message(
        id: 'msg3',
        senderId: 'user1',
        receiverId: 'user2',
        type: MessageType.image,
        content: 'https://example.com/images/pic.jpg',
        timestamp: DateTime.now().subtract(const Duration(minutes: 3)),
        isRead: false,
      ),
    ],
  ),
  Chat(
    id: 'chat2',
    userId1: 'user1',
    userId2: 'user3',
    messages: [
      Message(
        id: 'msg4',
        senderId: 'user1',
        receiverId: 'user3',
        type: MessageType.text,
        content: 'Hi Charlie!',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        isRead: true,
      ),
      Message(
        id: 'msg5',
        senderId: 'user3',
        receiverId: 'user1',
        type: MessageType.text,
        content: 'Hello Alice!',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
        isRead: false,
      ),
    ],
  ),
];
final List<Media> sampleMedia = [
  Media(
    id: 'media1',
    url: 'https://example.com/media/image1.jpg',
    type: MediaType.image,
    timestamp: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Media(
    id: 'media2',
    url: 'https://example.com/media/video1.mp4',
    type: MediaType.video,
    timestamp: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Media(
    id: 'media3',
    url: 'https://example.com/media/audio1.mp3',
    type: MediaType.audio,
    timestamp: DateTime.now().subtract(const Duration(days: 3)),
  ),
];
