part of 'providers.dart';

final getUserByUsernameStateNotifierProvider =
    Provider<GetUserByUsernameStateNotifier>((ref) {
  final getUserByUsername = ref.watch(getUserByUsernameProvider);
  return GetUserByUsernameStateNotifier(getUserByUsername);
});

final getPostsByIdStateNotifierProvider =
    Provider<GetPostsByIdStateNotifier>((ref) {
  final getPostsById = ref.watch(getPostsByIdProvider);
  return GetPostsByIdStateNotifier(getPostsById);
});

final analysePostsStateNotifierProvider =
    Provider<AnalysePostsStateNotifier>((ref) {
  final analysePostsByText = ref.watch(analysePostsByTextProvider);
  return AnalysePostsStateNotifier(analysePostsByText);
});
