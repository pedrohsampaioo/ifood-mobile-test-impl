import 'package:dartz/dartz.dart';

import '../entities/sentiment_entity.dart';
import '../failures/analyse_text_failure.dart';

abstract class GoogleLanguageService {
  const GoogleLanguageService();
  Future<Either<AnalyseTextFailure, SentimentEntity>> analyzeText(
    String text,
  );
}
