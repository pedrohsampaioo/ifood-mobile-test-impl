import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' show Response;
import 'package:ifood_mobile_test/core/config/http/http_twitter_authenticator_decorator.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/post_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/user_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_posts_by_id_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_user_by_username_failure.dart';
import 'package:ifood_mobile_test/features/posts/infraestructure/services/twitter_service_impl.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fixtures/fixture_reader.dart';

class HttpClientMock extends Mock implements HttpTwitterAuthenticatorDecorator {
}

main() {
  late HttpClientMock _httpClient;
  late TwitterServiceImpl _service;

  setUp(() {
    _httpClient = HttpClientMock();
    _service = TwitterServiceImpl(_httpClient);
  });

  group('getPostsById', () {
    late String id;
    late Uri urlUri;
    late Map<String, String> headers;

    setUp(() {
      id = '292383655';
      urlUri = Uri.parse('/2/users/$id/tweets');
      headers = {
        'content-type': 'application/json; '
            'application=x-www-form-urlencoded; charset=utf-8',
      };
    });
    group('success cases', () {
      test(
          'A List<PostEntity> must be returned'
          ' when the http call has code 200', () async {
        final successString = fixtureReader(
          'features/infraestructure/services/get_posts_by_id_200.json',
        );
        final successResponse = Response(
          successString,
          200,
          headers: headers,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => successResponse);
        final result = await _service.getPostsById(id);
        verify(() => _httpClient.get(urlUri));
        expect(result, isA<Right<GetPostsByIdFailure, List<PostEntity>>>());
      });
    });

    group('failure cases', () {
      test(
          'A unidentifiedHttpFailure must be returned'
          ' when the http call has no code 200', () async {
        final failureResponse = Response(
          'unidentified http failure',
          400,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => failureResponse);
        final result = await _service.getPostsById(id);
        verify(() => _httpClient.get(urlUri));
        expect(
          result,
          Left<GetPostsByIdFailure, List<PostEntity>>(
            GetPostsByIdFailure.unidentifiedHttpFailure(),
          ),
        );
      });
    });
  });

  group('getUserByUsername', () {
    late String username;
    late Uri urlUri;

    setUp(() {
      username = 'username';
      urlUri = Uri.parse('/2/users/by/username/$username');
    });
    group('success cases', () {
      test(
          'A UserEntity must be returned'
          ' when the http call has code 200', () async {
        final successString = fixtureReader(
          'features/infraestructure/services/get_user_by_name_success_200.json',
        );
        final successResponse = Response(
          successString,
          200,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => successResponse);
        final result = await _service.getUserByUsername(username);
        verify(() => _httpClient.get(urlUri));
        expect(result, isA<Right<GetUserByUsernameFailure, UserEntity>>());
      });
    });

    group('failure cases', () {
      test(
          'A userNotFound must be returned'
          ' when the http call has code 200 '
          'but has an error field with the title Not Found Error', () async {
        final failureString = fixtureReader(
          'features/infraestructure/services/get_user_by_name_not_found_200.json',
        );
        final failureResponse = Response(
          failureString,
          200,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => failureResponse);
        final result = await _service.getUserByUsername(username);
        verify(() => _httpClient.get(urlUri));
        expect(
          result,
          Left<GetUserByUsernameFailure, UserEntity>(
            GetUserByUsernameFailure.userNotFound(),
          ),
        );
      });

      test(
          'A unidentifiedHttpFailure must be returned'
          ' when the http call has code 200 '
          'but has an errors field', () async {
        final failureString = fixtureReader(
          'features/infraestructure/services/get_user_by_name_errors_empty_200.json',
        );
        final failureResponse = Response(
          failureString,
          200,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => failureResponse);
        final result = await _service.getUserByUsername(username);
        verify(() => _httpClient.get(urlUri));
        expect(
          result,
          Left<GetUserByUsernameFailure, UserEntity>(
            GetUserByUsernameFailure.unidentifiedHttpFailure(),
          ),
        );
      });

      test(
          'A rateLimiteExceeded must be returned'
          ' when the http call has code 429 ', () async {
        final failureResponse = Response(
          'rateLimiteExceeded',
          429,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => failureResponse);
        final result = await _service.getUserByUsername(username);
        verify(() => _httpClient.get(urlUri));
        expect(
          result,
          Left<GetUserByUsernameFailure, UserEntity>(
            GetUserByUsernameFailure.rateLimiteExceeded(),
          ),
        );
      });

      test(
          'A unidentifiedHttpFailure must be returned'
          ''' when it's totally unknown code ''', () async {
        final failureResponse = Response(
          'unidentifiedHttpFailure',
          400,
        );
        when(() => _httpClient.get(urlUri))
            .thenAnswer((_) async => failureResponse);
        final result = await _service.getUserByUsername(username);
        verify(() => _httpClient.get(urlUri));
        expect(
          result,
          Left<GetUserByUsernameFailure, UserEntity>(
            GetUserByUsernameFailure.unidentifiedHttpFailure(),
          ),
        );
      });
    });
  });
}
