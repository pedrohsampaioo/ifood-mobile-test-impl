import 'package:dartz/dartz.dart';

import '../entities/sentiment_entity.dart';
import '../failures/analyse_posts_by_text_failure.dart';
import '../services/google_language_service.dart';
import 'usecase.dart';

class AnalysePostByText extends UsecaseWithFailure<AnalysePostByTextParams,
    AnalysePostsByTextFailure, SentimentEntity> {
  final GoogleLanguageService _googleLanguageService;
  const AnalysePostByText(this._googleLanguageService);

  @override
  Future<Either<AnalysePostsByTextFailure, SentimentEntity>> call(
    AnalysePostByTextParams params,
  ) async {
    if (params.text.isEmpty) {
      return left(AnalysePostsByTextFailure.textIsEmpty());
    }
    final failureOrSuccess = await _googleLanguageService.analyzeText(
      params.text,
    );
    return failureOrSuccess
        .fold<Either<AnalysePostsByTextFailure, SentimentEntity>>(
      (failure) => left(
        AnalysePostsByTextFailure.googleLanguageServiceFailure(failure),
      ),
      (sentiment) => right(sentiment),
    );
  }
}

class AnalysePostByTextParams {
  final String text;
  const AnalysePostByTextParams(this.text);
}
