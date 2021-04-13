part of 'providers.dart';

final getUserByUsernameProvider = Provider<GetUserByUsername>((ref) {
  final twitterService = ref.watch(twitterServiceProvider);
  return GetUserByUsername(twitterService);
});

final getPostsByIdProvider = Provider<GetPostsById>((ref) {
  final twitterService = ref.watch(twitterServiceProvider);
  return GetPostsById(twitterService);
});

final analysePostsByTextProvider = Provider<AnalysePostByText>((ref) {
  final googleLanguageService = ref.watch(googleLanguageServiceProvider);
  return AnalysePostByText(googleLanguageService);
});
