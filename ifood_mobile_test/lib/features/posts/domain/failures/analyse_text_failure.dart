import 'package:freezed_annotation/freezed_annotation.dart';

import 'failure.dart';

part 'analyse_text_failure.freezed.dart';

@freezed
abstract class AnalyseTextFailure with _$AnalyseTextFailure implements Failure {
  const factory AnalyseTextFailure.httpFailure() =
      AnalyseTextFailureHttpFailure;
  const factory AnalyseTextFailure.noSentenceEvaluated() =
      AnalyseTextFailureNoSentenceEvaluated;
}
