part of 'providers.dart';

final getUserByUsernameStateNotifierProvider = StateNotifierProvider<
    GetUserByUsernameStateNotifier, GetUserByUsernameState>(
  (ref) => GetUserByUsernameStateNotifier(
    ref.watch(getUserByUsernameProvider),
  ),
);

final getPostsByIdStateNotifierProvider =
    StateNotifierProvider<GetPostsByIdStateNotifier, GetPostsByIdState>((ref) {
  final getPostsById = ref.watch(getPostsByIdProvider);
  return GetPostsByIdStateNotifier(getPostsById);
});

final analysePostsStateNotifierProvider = StateNotifierProvider.family<
    AnalysePostsStateNotifier, AnalysePostsState, String>((ref, id) {
  final analysePostsByText = ref.watch(analysePostsByTextProvider);
  return AnalysePostsStateNotifier(analysePostsByText);
});
