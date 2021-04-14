import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../domain/entities/sentiment_entity.dart';
import '../../domain/failures/analyse_text_failure.dart';
import '../../domain/services/google_language_service.dart';
import '../http_config/http_google_language_decorator.dart';
import '../models/sentiment_model.dart';

class GoogleLanguageServiceImpl implements GoogleLanguageService {
  final HttpGoogleLanguageDecorator _httpClient;

  const GoogleLanguageServiceImpl(this._httpClient);

  @override
  Future<Either<AnalyseTextFailure, SentimentEntity>> analyzeText(
    String text,
  ) async {
    final body = jsonEncode({
      'encodingType': 'UTF8',
      'document': {
        'type': 'PLAIN_TEXT',
        'content': text,
      },
    });
    final response = await _httpClient.post(
      Uri.parse('/v1beta2/documents:analyzeSentiment'),
      body: body,
    );
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
      final noHasSentence = (responseJson['sentences'] as List).isEmpty;
      if (noHasSentence) {
        return left(AnalyseTextFailure.noSentenceEvaluated());
      }
      final sentimentEntity = SentimentModel.fromJson(responseJson);
      return right(sentimentEntity);
    }
    return left(AnalyseTextFailure.httpFailure());
  }
}
