import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:ifood_mobile_test/features/posts/infraestructure/http_config/http_google_language_decorator.dart';

main() {
  late String googleLanguageKey = 'google_language_key';
  late Client decoratee;
  late HttpGoogleLanguageDecorator decorator;
  late String method;
  late String body;
  late String baseUrl;
  late Map<String, String> headers;

  setUp(() {
    decoratee = Client();
    decorator = HttpGoogleLanguageDecorator(decoratee, googleLanguageKey);
    method = 'POST';
    body = "body";
    baseUrl = 'https://language.googleapis.com';
    headers = {
      'content-type': 'application/json; charset=utf-8',
      'Accept': 'application/json',
    };
  });

  test(
      'Check the injection of the base url with the key, '
      'if the headers are being injected correctly and the body'
      ' of the request passed on', () async {
    final url = Uri.parse('/v1beta2/documents:analyzeSentiment');
    final expectedUrl = Uri.parse('$baseUrl${url.path}?key=$googleLanguageKey');
    final request = Request(method, url)..body = body;
    final streamedResponse = await decorator.send(request);
    final requestResult = (streamedResponse.request as Request);
    expect(requestResult.url, expectedUrl);
    expect(requestResult.method, method);
    expect(requestResult.body, body);
    expect(requestResult.headers, headers);
  });

  test(
      'Check if a url base is being replaced with the correct one'
      ' if an incorrect url base is passed', () async {
    final url =
        Uri.parse('https://example.com/v1beta2/documents:analyzeSentiment');
    final expectedUrl = Uri.parse('$baseUrl${url.path}?key=$googleLanguageKey');
    final request = Request(method, url)..body = body;
    final streamedResponse = await decorator.send(request);
    final requestResult = (streamedResponse.request as Request);
    expect(requestResult.url, expectedUrl);
  });
}
