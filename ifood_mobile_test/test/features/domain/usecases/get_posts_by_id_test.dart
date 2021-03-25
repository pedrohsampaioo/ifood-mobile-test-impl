import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/post_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_posts_by_id_failure.dart';
import 'package:ifood_mobile_test/features/posts/domain/services/twitter_repository.dart';
import 'package:ifood_mobile_test/features/posts/domain/usecases/get_posts_by_id.dart';
import 'package:mocktail/mocktail.dart';

class TwitterRepositoryMock extends Mock implements TwitterRepository {}

main() {
  late TwitterRepositoryMock _twitterRepositoryMock;
  late GetPostsById _usecase;

  setUp(() {
    _twitterRepositoryMock = TwitterRepositoryMock();
    _usecase = GetPostsById(_twitterRepositoryMock);
  });

  test(
    'The future that will be returned must be the same  '
    'as that of the _twitterRepository.getPostsById()',
    () {
      final futureToReturn =
          Future<Either<GetPostsByIdFailure, List<PostEntity>>>.sync(
        () => right([]),
      );
      final params = GetPostsByIdParams(id: '5');
      when(() => _twitterRepositoryMock.getPostsById(any()))
          .thenAnswer((invocation) => futureToReturn);
      final result = _usecase(params);
      verify(() => _twitterRepositoryMock.getPostsById(params.id)).called(1);
      expect(result, futureToReturn);
    },
  );
}
