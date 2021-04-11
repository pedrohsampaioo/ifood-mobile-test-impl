import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'get_user_by_username_failure.freezed.dart';

@freezed
abstract class GetUserByUsernameFailure
    with _$GetUserByUsernameFailure
    implements Failure {
  const factory GetUserByUsernameFailure.unidentifiedHttpFailure() =
      GetUserByUsernameFailureUnidentifiedHttpFailure;
  const factory GetUserByUsernameFailure.rateLimiteExceeded() =
      GetUserByUsernameFailureRateLimiteExceeded;
  const factory GetUserByUsernameFailure.userNotFound() =
      GetUserByUsernameFailureUserNotFound;
}
