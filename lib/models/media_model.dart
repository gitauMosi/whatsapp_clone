class Media {
  final String id;
  final String url;
  final MediaType type;
  final DateTime timestamp;

  Media({
    required this.id,
    required this.url,
    required this.type,
    required this.timestamp,
  });

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
      id: json['id'],
      url: json['url'],
      type: MediaType.values[json['type']],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'type': type.index,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}

enum MediaType {
  image,
  video,
  audio,
}
