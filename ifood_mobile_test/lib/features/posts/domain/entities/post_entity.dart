class PostEntity {
  final String id;
  final String text;
  const PostEntity({required this.id, required this.text});

  @override
  String toString() => 'PostEntity(id: $id, text: $text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostEntity && other.id == id && other.text == text;
  }

  @override
  int get hashCode => id.hashCode ^ text.hashCode;
}
