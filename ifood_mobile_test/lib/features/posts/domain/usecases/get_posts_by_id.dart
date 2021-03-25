import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';
import '../failures/get_posts_by_id_failure.dart';
import '../services/twitter_service.dart';
import 'usecase.dart';

class GetPostsById extends UsecaseWithFailure<GetPostsByIdParams,
    GetPostsByIdFailure, List<PostEntity>> {
  final TwitterService _twitterService;

  const GetPostsById(this._twitterService);

  @override
  Future<Either<GetPostsByIdFailure, List<PostEntity>>> call(
    GetPostsByIdParams params,
  ) {
    return _twitterService.getPostsById(params.id);
  }
}

class GetPostsByIdParams {
  final String id;

  const GetPostsByIdParams({required this.id});
}
