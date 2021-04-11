import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';
import 'get_user_by_username_failure.dart';

part 'get_user_by_username_usecase_failure.freezed.dart';

@freezed
abstract class GetUserByUsernameUsecaseFailure
    with _$GetUserByUsernameUsecaseFailure
    implements Failure {
  const factory GetUserByUsernameUsecaseFailure.twitterServiceFailure(
    GetUserByUsernameFailure failure,
  ) = GetUserByUsernameUsecaseFailureTwitterServiceFailure;
  const factory GetUserByUsernameUsecaseFailure.usernameIsEmpty() =
      GetUserByUsernameUsecaseFailureUsernameIsEmpty;
}
