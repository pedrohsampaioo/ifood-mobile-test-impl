import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';
import '../failures/get_posts_by_id_usecase_failure.dart';
import '../services/twitter_service.dart';
import 'usecase.dart';

class GetPostsById extends UsecaseWithFailure<GetPostsByIdParams,
    GetPostsByIdUsecaseFailure, List<PostEntity>> {
  final TwitterService _twitterService;

  const GetPostsById(this._twitterService);

  @override
  Future<Either<GetPostsByIdUsecaseFailure, List<PostEntity>>> call(
    GetPostsByIdParams params,
  ) async {
    if (params.id.isEmpty) {
      return left(GetPostsByIdUsecaseFailure.idIsEmpty());
    }
    if (_isNotValidId(params.id)) {
      return left(GetPostsByIdUsecaseFailure.invalidPatternId());
    }
    final failureOrSuccess = await _twitterService.getPostsById(params.id);
    return failureOrSuccess
        .fold<Either<GetPostsByIdUsecaseFailure, List<PostEntity>>>(
      (failure) => left(
        GetPostsByIdUsecaseFailure.twitterServiceFailure(failure),
      ),
      (posts) => right(posts),
    );
  }
}

bool _isNotValidId(String id) => !RegExp("""^[0-9]{1,19}\$""").hasMatch(id);

class GetPostsByIdParams {
  final String id;

  const GetPostsByIdParams({required this.id});
}
