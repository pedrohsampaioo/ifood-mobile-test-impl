import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ifood_mobile_test/features/posts/domain/entities/post_entity.dart';
import 'package:ifood_mobile_test/features/posts/domain/failures/get_posts_by_id_failure.dart';
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
    'The future that will be returned must be the same  '
    'as that of the _twitterService.getPostsById()',
    () {
      final futureToReturn =
          Future<Either<GetPostsByIdFailure, List<PostEntity>>>.sync(
        () => right([]),
      );
      final params = GetPostsByIdParams(id: '5');
      when(() => _twitterServiceMock.getPostsById(any()))
          .thenAnswer((invocation) => futureToReturn);
      final result = _usecase(params);
      verify(() => _twitterServiceMock.getPostsById(params.id)).called(1);
      expect(result, futureToReturn);
    },
  );
}
