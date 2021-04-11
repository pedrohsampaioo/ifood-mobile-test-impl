class SentimentEntity {
  final double score;
  final double magnitude;
  final String content;
  final String language;
  final String emoji;

  const SentimentEntity({
    required this.score,
    required this.magnitude,
    required this.content,
    required this.language,
    required this.emoji,
  });

  @override
  String toString() {
    return 'SentimentEntity(score: $score,'
        ' magnitude: $magnitude, content: $content,'
        ' language: $language, emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SentimentEntity &&
        other.score == score &&
        other.magnitude == magnitude &&
        other.content == content &&
        other.language == language &&
        other.emoji == emoji;
  }

  @override
  int get hashCode {
    return score.hashCode ^
        magnitude.hashCode ^
        content.hashCode ^
        language.hashCode ^
        emoji.hashCode;
  }
}
