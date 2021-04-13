import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/sentiment_entity.dart';
import '../../../domain/failures/analyse_posts_by_text_failure.dart';
import '../../../domain/usecases/analyse_post_by_text.dart';

part 'analyse_posts_state.dart';
part 'analyse_posts_state_notifier.freezed.dart';

class AnalysePostsStateNotifier extends StateNotifier<AnalysePostsState> {
  final AnalysePostByText _usecase;

  AnalysePostsStateNotifier(this._usecase) : super(AnalysePostsState.started());

  Future<void> analyse(String text) async {
    state = AnalysePostsState.loadInProgress();
    final params = AnalysePostByTextParams(text);
    final failureOrSuccess = await _usecase(params);
    failureOrSuccess.fold(
      (failure) => state = AnalysePostsState.loadFailure(failure),
      (sentiment) => state = AnalysePostsState.loadSuccess(sentiment),
    );
  }
}
