part of 'providers.dart';

final googleLanguageServiceProvider = Provider<GoogleLanguageService>((ref) {
  final httpGoogleLanguage = ref.watch(httpGoogleLanguageProvider);
  return GoogleLanguageServiceImpl(httpGoogleLanguage);
});

final twitterServiceProvider = Provider<TwitterService>((ref) {
  final httpTwitterAuthenticator = ref.watch(httpTwitterAuthenticatorDecorator);
  return TwitterServiceImpl(httpTwitterAuthenticator);
});
