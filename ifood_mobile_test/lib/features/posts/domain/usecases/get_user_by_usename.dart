import 'package:dartz/dartz.dart';

import '../entities/user_entity.dart';
import '../failures/get_user_by_username_usecase_failure.dart';
import '../services/twitter_service.dart';
import 'usecase.dart';

class GetUserByUsername extends UsecaseWithFailure<GetUserByUsernameParams,
    GetUserByUsernameUsecaseFailure, UserEntity> {
  final TwitterService _twitterService;

  const GetUserByUsername(this._twitterService);

  @override
  Future<Either<GetUserByUsernameUsecaseFailure, UserEntity>> call(
    GetUserByUsernameParams params,
  ) async {
    if (params.username.isEmpty) {
      return left(GetUserByUsernameUsecaseFailure.usernameIsEmpty());
    }
    final failureOrSuccess = await _twitterService.getUserByUsername(
      params.username,
    );
    return failureOrSuccess
        .fold<Either<GetUserByUsernameUsecaseFailure, UserEntity>>(
      (failure) =>
          left(GetUserByUsernameUsecaseFailure.twitterServiceFailure(failure)),
      (user) => right(user),
    );
  }
}

class GetUserByUsernameParams {
  final String username;

  const GetUserByUsernameParams({required this.username});
}
