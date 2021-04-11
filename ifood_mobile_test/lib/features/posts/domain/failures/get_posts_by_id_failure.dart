import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'get_posts_by_id_failure.freezed.dart';

@freezed
abstract class GetPostsByIdFailure
    with _$GetPostsByIdFailure
    implements Failure {
  const factory GetPostsByIdFailure.unidentifiedHttpFailure() =
      GetPostsByIdFailureUnidentifiedHttpFailure;
  const factory GetPostsByIdFailure.invalidPatternId() =
      GetPostsByIdFailureInvalidPatternId;
  const factory GetPostsByIdFailure.userNotFound() =
      GetPostsByIdFailureUserNotFound;
}
