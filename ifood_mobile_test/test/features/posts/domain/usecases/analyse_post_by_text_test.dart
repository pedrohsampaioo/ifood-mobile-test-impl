import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/sentiment_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/analyse_posts_by_text_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/analyse_text_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/services/google_language_service.dart';
import 'package:ifood_mobile_test/features/posts/domain/usecases/analyse_post_by_text.dart';
import 'package:mocktail/mocktail.dart';

class GoogleLanguageServiceMock extends Mock implements GoogleLanguageService {}

main() {
  late AnalysePostByText usecase;
  late GoogleLanguageServiceMock googleLanguageServiceMock;

  setUp(() {
    googleLanguageServiceMock = GoogleLanguageServiceMock();
    usecase = AnalysePostByText(googleLanguageServiceMock);
  });

  test(
      'AnalysePostsByTextFailure.textIsEmpty() must be returned '
      'when the text to empty parameter', () async {
    final text = '';
    final params = AnalysePostByTextParams(text);
    final result = await usecase(params);
    verifyZeroInteractions(googleLanguageServiceMock);
    expect(
      result,
      left<AnalysePostsByTextFailure, SentimentEntity>(
        AnalysePostsByTextFailure.textIsEmpty(),
      ),
    );
  });

  test(
      'AnalysePostsByTextFailure must be returned when it is valid '
      'text input and the API returns error', () async {
    final text = 'sad';
    final params = AnalysePostByTextParams(text);
    final failure = AnalyseTextFailure.httpFailure();
    final futureToReturn = Future.value(
      left<AnalyseTextFailure, SentimentEntity>(failure),
    );
    when(() => googleLanguageServiceMock.analyzeText(text))
        .thenAnswer((_) => futureToReturn);
    final result = await usecase(params);
    verify(() => googleLanguageServiceMock.analyzeText(text)).called(1);
    expect(
      result,
      left<AnalysePostsByTextFailure, SentimentEntity>(
        AnalysePostsByTextFailure.googleLanguageServiceFailure(failure),
      ),
    );
  });

  test(
      'SentimentEntity must be returned when it is valid '
      'text input and the API returns success', () async {
    final text = 'sad';
    final params = AnalysePostByTextParams(text);
    final entity = SentimentEntity(
      content: 'content',
      emoji: 'emoji',
      language: 'language',
      magnitude: 0.5,
      score: 0.5,
    );
    final futureToReturn = Future.value(
      right<AnalyseTextFailure, SentimentEntity>(entity),
    );
    when(() => googleLanguageServiceMock.analyzeText(text))
        .thenAnswer((_) => futureToReturn);
    final result = await usecase(params);
    verify(() => googleLanguageServiceMock.analyzeText(text)).called(1);
    expect(
      result,
      right<AnalysePostsByTextFailure, SentimentEntity>(entity),
    );
  });
}
