import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/user_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_user_by_username_failure.dart';
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
    'The future that will be returned must be the same  '
    'as that of the _twitterService.getUserByUsername()',
    () {
      final futureToReturn =
          Future<Either<GetUserByUsernameFailure, UserEntity>>.sync(
        () => right(UserEntity(username: 'username', id: 'id', name: 'name')),
      );
      final params = GetUserByUsernameParams(username: 'username');
      when(() => _twitterServiceMock.getUserByUsername(any()))
          .thenAnswer((_) => futureToReturn);
      final result = _usecase(params);
      verify(() => _twitterServiceMock.getUserByUsername(params.username))
          .called(1);
      expect(result, futureToReturn);
    },
  );
}
