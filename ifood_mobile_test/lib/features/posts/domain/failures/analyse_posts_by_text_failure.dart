import 'package:freezed_annotation/freezed_annotation.dart';

import 'analyse_text_failure.dart';
import 'failure.dart';

part 'analyse_posts_by_text_failure.freezed.dart';

@freezed
abstract class AnalysePostsByTextFailure
    with _$AnalysePostsByTextFailure
    implements Failure {
  const factory AnalysePostsByTextFailure.googleLanguageServiceFailure(
    AnalyseTextFailure analyseTextFailure,
  ) = AnalysePostsByTextFailureGoogleLanguageServiceFailure;
  const factory AnalysePostsByTextFailure.textIsEmpty() =
      AnalysePostsByTextFailureTextIsEmpty;
}
