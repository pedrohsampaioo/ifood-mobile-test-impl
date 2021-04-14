import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/failures/get_user_by_username_usecase_failure.dart';
import '../../../domain/usecases/get_user_by_usename.dart';

part 'get_user_by_username_state.dart';
part 'get_user_by_username_state_notifier.freezed.dart';

class GetUserByUsernameStateNotifier
    extends StateNotifier<GetUserByUsernameState> {
  final GetUserByUsername _usecase;

  GetUserByUsernameStateNotifier(
    this._usecase,
  ) : super(GetUserByUsernameState.started());

  void emitLoadInProgress() {
    state = GetUserByUsernameState.loadInProgress();
  }

  Future<void> fetch(String username) async {
    state = GetUserByUsernameState.loadInProgress();
    final params = GetUserByUsernameParams(username: username);
    final failureOrSuccess = await _usecase(params);
    failureOrSuccess.fold(
      (failure) => state = GetUserByUsernameState.loadFailure(failure),
      (user) => state = GetUserByUsernameState.loadSuccess(user),
    );
  }
}
