part of 'analyse_posts_state_notifier.dart';

@freezed
class AnalysePostsState with _$AnalysePostsState {
  const factory AnalysePostsState.started() = AnalysePostsStateStarted;
  const factory AnalysePostsState.loadInProgress() =
      AnalysePostsStateLoadInProgress;
  const factory AnalysePostsState.loadSuccess(
    SentimentEntity sentiment,
  ) = AnalysePostsStateLoadSuccess;
  const factory AnalysePostsState.loadFailure(
    AnalysePostsByTextFailure failure,
  ) = AnalysePostsStateLoadFailure;
}
