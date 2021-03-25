import 'package:dartz/dartz.dart';

import '../entities/post_entity.dart';
import '../entities/user_entity.dart';
import '../failures/get_posts_by_id_failure.dart';
import '../failures/get_user_by_username_failure.dart';

abstract class TwitterService {
  const TwitterService();

  Future<Either<GetPostsByIdFailure, List<PostEntity>>> getPostsById(
    String id,
  );

  Future<Either<GetUserByUsernameFailure, UserEntity>> getUserByUsername(
    String username,
  );
}
