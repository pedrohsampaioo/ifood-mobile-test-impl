import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/post_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_posts_by_id_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_posts_by_id_usecase_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/services/twitter_service.dart';
import 'package:ifood_mobile_test/features/posts/domain/usecases/get_posts_by_id.dart';
import 'package:mocktail/mocktail.dart';

class TwitterServiceMock extends Mock implements TwitterService {}

main() {
  late TwitterServiceMock _twitterServiceMock;
  late GetPostsById _usecase;

  setUp(() {
    _twitterServiceMock = TwitterServiceMock();
    _usecase = GetPostsById(_twitterServiceMock);
  });

  test(
      'GetPostsByIdUsecaseFailure.idIsEmpty() must be returned '
      'when the id to empty parameter', () async {
    final id = '';
    final params = GetPostsByIdParams(id: id);
    final result = await _usecase(params);
    verifyZeroInteractions(_twitterServiceMock);
    expect(
      result,
      left<GetPostsByIdUsecaseFailure, List<PostEntity>>(
        GetPostsByIdUsecaseFailure.idIsEmpty(),
      ),
    );
  });

  test(
      'GetPostsByIdUsecaseFailure.invalidPatternId() must be returned '
      'when the id  is not ^[0-9]{1,19}\$', () async {
    final id = '0000000000000000000sad454545';
    final params = GetPostsByIdParams(id: id);
    final result = await _usecase(params);
    verifyZeroInteractions(_twitterServiceMock);
    expect(
      result,
      left<GetPostsByIdUsecaseFailure, List<PostEntity>>(
        GetPostsByIdUsecaseFailure.invalidPatternId(),
      ),
    );
  });

  test(
      'List<PostEntity> must be returned when the'
      ' server responds successfully', () async {
    final id = '114111';
    final params = GetPostsByIdParams(id: id);
    final List<PostEntity> list = [];
    final futureToReturn = Future.value(
      right<GetPostsByIdFailure, List<PostEntity>>(list),
    );
    when(() => _twitterServiceMock.getPostsById(id))
        .thenAnswer((_) => futureToReturn);
    final result = await _usecase(params);
    verify(() => _twitterServiceMock.getPostsById(id)).called(1);
    expect(
      result,
      right<GetPostsByIdUsecaseFailure, List<PostEntity>>(list),
    );
  });
}
