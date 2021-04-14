import '../../domain/entities/sentiment_entity.dart';

class SentimentModel extends SentimentEntity {
  const SentimentModel({
    required double score,
    required double magnitude,
    required String content,
    required String language,
    required String emoji,
  }) : super(
          score: score,
          magnitude: magnitude,
          content: content,
          language: language,
          emoji: emoji,
        );

  factory SentimentModel.fromJson(Map<String, dynamic> json) {
    final sentence = json['sentences'][0];
    final score = (sentence['sentiment']['score'] as num).toDouble();
    final magnitude = (sentence['sentiment']['magnitude'] as num).toDouble();
    final content = sentence['text']['content'];
    final language = json['language'];
    return SentimentModel(
      score: score,
      magnitude: magnitude,
      content: content,
      language: language,
      emoji: _chooseEmoji(score),
    );
  }

  static String _chooseEmoji(double score) {
    if (score == 0) {
      return '😐';
    }
    if (score > 0) {
      return '😃';
    }
    return '😔';
  }
}
