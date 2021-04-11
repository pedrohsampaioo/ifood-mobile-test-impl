import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/sentiment_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/analyse_text_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/services/google_language_service.dart';
import 'package:ifood_mobile_test/features/posts/infraestructure/http_config/http_google_language_decorator.dart';
import 'package:ifood_mobile_test/features/posts/infraestructure/services/google_language_service_impl.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixtures/fixture_reader.dart';

class HttpClientMock extends Mock implements HttpGoogleLanguageDecorator {}

main() {
  late GoogleLanguageService service;
  late HttpClientMock httpClientMock;

  setUp(() {
    httpClientMock = HttpClientMock();
    service = GoogleLanguageServiceImpl(httpClientMock);
  });

  group('analyzeText', () {
    late Uri urlUri;
    late String body;
    late String content;

    setUp(() {
      content = 'sad';
      urlUri = Uri.parse('/v1beta2/documents:analyzeSentiment');
      body = jsonEncode({
        'encodingType': 'UTF8',
        'document': {
          'type': 'PLAIN_TEXT',
          'content': content,
        },
      });
    });

    group('success cases', () {
      late String successResponseString;
      setUp(() {
        successResponseString = fixtureReader(
          'features/infraestructure/services/google_language_service/success_200.json',
        );
      });
      test('Sentiment entity must be returned when success occurs ', () async {
        final successResponse = Future.value(
          Response(successResponseString, 200),
        );
        when(() => httpClientMock.post(urlUri, body: body))
            .thenAnswer((_) => successResponse);
        final result = await service.analyzeText(content);
        verify(() => httpClientMock.post(urlUri, body: body));
        expect(result, isA<Right<AnalyseTextFailure, SentimentEntity>>());
      });
    });

    group('failures cases', () {
      test(
          'AnalyseTextFailure.noSentenceEvaluated must be returned when'
          ' a response from the server with no parsed phrase is returned',
          () async {
        final failureResponseString = fixtureReader(
          'features/infraestructure/services/google_language_service/success_no_sentence_200.json',
        );
        final failureResponse = Future.value(
          Response(failureResponseString, 200),
        );
        when(() => httpClientMock.post(urlUri, body: body))
            .thenAnswer((_) => failureResponse);
        final result = await service.analyzeText(content);
        verify(() => httpClientMock.post(urlUri, body: body));
        expect(
          result,
          left<AnalyseTextFailure, SentimentEntity>(
            AnalyseTextFailure.noSentenceEvaluated(),
          ),
        );
      });

      test(
          'AnalyseTextFailure.httpFailure must be returned when'
          ' an unknown error is returned by the server', () async {
        final failureResponse = Future.value(
          Response('an unknown error', 400),
        );
        when(() => httpClientMock.post(urlUri, body: body))
            .thenAnswer((_) => failureResponse);
        final result = await service.analyzeText(content);
        verify(() => httpClientMock.post(urlUri, body: body));
        expect(
          result,
          left<AnalyseTextFailure, SentimentEntity>(
            AnalyseTextFailure.httpFailure(),
          ),
        );
      });
    });
  });
}
