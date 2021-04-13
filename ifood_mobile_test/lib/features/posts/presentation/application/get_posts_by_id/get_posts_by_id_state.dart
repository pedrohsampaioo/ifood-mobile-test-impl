part of 'get_posts_by_id_state_notifier.dart';

@freezed
class GetPostsByIdState with _$GetPostsByIdState {
  const factory GetPostsByIdState.started() = GetPostsByIdStateStarted;
  const factory GetPostsByIdState.loadInProgress() =
      GetPostsByIdStateLoadInProgress;
  const factory GetPostsByIdState.loadSuccess(
    List<PostEntity> posts,
  ) = GetPostsByIdStateLoadSuccess;
  const factory GetPostsByIdState.loadFailure(
    GetPostsByIdUsecaseFailure failure,
  ) = GetPostsByIdStateLoadFailure;
}
