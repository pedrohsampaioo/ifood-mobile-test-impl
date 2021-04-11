import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';
import 'get_posts_by_id_failure.dart';

part 'get_posts_by_id_usecase_failure.freezed.dart';

@freezed
abstract class GetPostsByIdUsecaseFailure
    with _$GetPostsByIdUsecaseFailure
    implements Failure {
  const factory GetPostsByIdUsecaseFailure.twitterServiceFailure(
    GetPostsByIdFailure failure,
  ) = GetPostsByIdUsecaseFailureTwitterServiceFailure;
  const factory GetPostsByIdUsecaseFailure.idIsEmpty() =
      GetPostsByIdUsecaseFailureIdIsEmpty;
  const factory GetPostsByIdUsecaseFailure.invalidPatternId() =
      GetPostsByIdUsecaseFailureInvalidPatternId;
}
