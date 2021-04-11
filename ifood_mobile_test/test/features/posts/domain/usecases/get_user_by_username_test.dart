import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/user_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_user_by_username_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_user_by_username_usecase_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/services/twitter_service.dart';
import 'package:ifood_mobile_test/features/posts/domain/usecases/get_user_by_usename.dart';
import 'package:mocktail/mocktail.dart';

class TwitterRepositoryMock extends Mock implements TwitterService {}

main() {
  late TwitterRepositoryMock _twitterServiceMock;
  late GetUserByUsername _usecase;

  setUp(() {
    _twitterServiceMock = TwitterRepositoryMock();
    _usecase = GetUserByUsername(_twitterServiceMock);
  });

  test(
      'GetUserByUsernameUsecaseFailure.usernameIsEmpty() must be returned '
      'when the username is empty parameter', () async {
    final username = '';
    final params = GetUserByUsernameParams(username: username);
    final result = await _usecase(params);
    verifyZeroInteractions(_twitterServiceMock);
    expect(
      result,
      left<GetUserByUsernameUsecaseFailure, UserEntity>(
        GetUserByUsernameUsecaseFailure.usernameIsEmpty(),
      ),
    );
  });

  test(
      'UserEntity must be returned '
      'when a valid username is passed and the server returns success',
      () async {
    final username = 'username';
    final params = GetUserByUsernameParams(username: username);
    final user = UserEntity(id: 'id', username: username, name: 'name');
    final futureToReturn = Future.value(
      right<GetUserByUsernameFailure, UserEntity>(user),
    );
    when(() => _twitterServiceMock.getUserByUsername(username))
        .thenAnswer((_) => futureToReturn);
    final result = await _usecase(params);
    verify(() => _twitterServiceMock.getUserByUsername(username)).called(1);
    expect(
      result,
      right<GetUserByUsernameUsecaseFailure, UserEntity>(
        user,
      ),
    );
  });

  test(
      'GetUserByUsernameUsecaseFailure.twitterServiceFailure(failure) must be returned '
      'when a valid username is passed and the server returns failure',
      () async {
    final username = 'username';
    final params = GetUserByUsernameParams(username: username);
    final failure = GetUserByUsernameFailure.rateLimiteExceeded();
    final futureToReturn = Future.value(
      left<GetUserByUsernameFailure, UserEntity>(failure),
    );
    when(() => _twitterServiceMock.getUserByUsername(username))
        .thenAnswer((_) => futureToReturn);
    final result = await _usecase(params);
    verify(() => _twitterServiceMock.getUserByUsername(username)).called(1);
    expect(
      result,
      left<GetUserByUsernameUsecaseFailure, UserEntity>(
        GetUserByUsernameUsecaseFailure.twitterServiceFailure(failure),
      ),
    );
  });
}
