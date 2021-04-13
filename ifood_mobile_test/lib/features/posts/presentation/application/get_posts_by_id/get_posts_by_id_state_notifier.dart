import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/post_entity.dart';
import '../../../domain/failures/get_posts_by_id_usecase_failure.dart';
import '../../../domain/usecases/get_posts_by_id.dart';

part 'get_posts_by_id_state.dart';
part 'get_posts_by_id_state_notifier.freezed.dart';

class GetPostsByIdStateNotifier extends StateNotifier<GetPostsByIdState> {
  final GetPostsById _usecase;

  GetPostsByIdStateNotifier(this._usecase) : super(GetPostsByIdState.started());

  Future<void> fetchPosts(String id) async {
    state = GetPostsByIdState.loadInProgress();
    final params = GetPostsByIdParams(id: id);
    final failureOrSuccess = await _usecase(params);
    failureOrSuccess.fold(
      (failure) => state = GetPostsByIdState.loadFailure(failure),
      (posts) => state = GetPostsByIdState.loadSuccess(posts),
    );
  }
}
