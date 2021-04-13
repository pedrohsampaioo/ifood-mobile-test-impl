part of 'get_user_by_username_state_notifier.dart';

@freezed
class GetUserByUsernameState with _$GetUserByUsernameState {
  const factory GetUserByUsernameState.started() =
      GetUserByUsernameStateStarted;
  const factory GetUserByUsernameState.loadInProgress() =
      GetUserByUsernameStateLoadInProgress;
  const factory GetUserByUsernameState.loadSuccess(
    UserEntity user,
  ) = GetUserByUsernameStateLoadSuccess;
  const factory GetUserByUsernameState.loadFailure(
    GetUserByUsernameUsecaseFailure failure,
  ) = GetUserByUsernameStateLoadFailure;
}
