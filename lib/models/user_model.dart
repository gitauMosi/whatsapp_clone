class User {
  final String id;
  final String name;
  final String phoneNumber;
  final String profilePictureUrl;
  final DateTime lastSeen;

  User({
    required this.id,
    required this.name,
    required this.phoneNumber,
    this.profilePictureUrl = '',
    required this.lastSeen,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      profilePictureUrl: json['profilePictureUrl'] ?? '',
      lastSeen: DateTime.parse(json['lastSeen']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'profilePictureUrl': profilePictureUrl,
      'lastSeen': lastSeen.toIso8601String(),
    };
  }
}
