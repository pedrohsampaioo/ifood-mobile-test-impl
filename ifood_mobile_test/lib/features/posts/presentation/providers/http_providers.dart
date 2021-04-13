part of 'providers.dart';

final httpClientProvider = Provider<Client>((_) => Client());

final httpGoogleLanguageProvider = Provider<HttpGoogleLanguageDecorator>((ref) {
  final httpClient = ref.watch(httpClientProvider);
  return HttpGoogleLanguageDecorator(
    httpClient,
    env['GOOGLE_LANGUAGE_TOKEN']!,
  );
});

final httpTwitterAuthenticatorDecorator =
    Provider<HttpTwitterAuthenticatorDecorator>((ref) {
  final httpClient = ref.watch(httpClientProvider);
  return HttpTwitterAuthenticatorDecorator(
    httpClient,
    env['TWITTER_BEARER_TOKEN']!,
  );
});
