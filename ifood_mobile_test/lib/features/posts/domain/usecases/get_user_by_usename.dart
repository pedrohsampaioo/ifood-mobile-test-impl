import 'package:dartz/dartz.dart';

import '../entities/user_entity.dart';
import '../failures/get_user_by_username_failure.dart';
import '../services/twitter_repository.dart';
import 'usecase.dart';

class GetUserByUsername extends UsecaseWithFailure<GetUserByUsernameParams,
    GetUserByUsernameFailure, UserEntity> {
  final TwitterRepository _twitterRepository;

  const GetUserByUsername(this._twitterRepository);

  @override
  Future<Either<GetUserByUsernameFailure, UserEntity>> call(
    GetUserByUsernameParams params,
  ) {
    return _twitterRepository.getUserByUsername(params.username);
  }
}

class GetUserByUsernameParams {
  final String username;

  const GetUserByUsernameParams({required this.username});
}
