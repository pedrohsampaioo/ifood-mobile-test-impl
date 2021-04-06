import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:ifood_mobile_test/core/config/http/http_twitter_authenticator_decorator.dart';
import 'package:mocktail/mocktail.dart';

class BaseRequestMock extends Mock implements BaseRequest {}

main() {
  late HttpTwitterAuthenticatorDecorator httpTwitterAuthenticatorDecorator;

  late BaseRequestMock baseRequestMock;
  final bearerTokenMock = 'beareTokenMock';

  setUp(() {
    baseRequestMock = BaseRequestMock();
    httpTwitterAuthenticatorDecorator = HttpTwitterAuthenticatorDecorator(
      Client(),
      bearerTokenMock,
    );
  });

  group(
      'the headers must be injected, the url '
      'must be formatted and the bearer token must be injected.', () {
    late String pathUrl;
    late String baseUrl;
    late Map<String, String> headers;
    late String method;

    setUp(() {
      pathUrl = '/2/users/55/tweets';
      baseUrl = 'https://api.twitter.com';
      headers = {
        'content-type': 'application/json; '
            'application=x-www-form-urlencoded; charset=utf-8',
        'Authorization': 'Bearer $bearerTokenMock',
      };
      method = 'GET';

      when(() => baseRequestMock.method).thenReturn(method);
    });

    test(
        'when only the path of the url is informed'
        ', the base url must be concatenated', () async {
      final baseRequestUrl = Uri.parse(pathUrl);
      when(() => baseRequestMock.url).thenReturn(baseRequestUrl);
      when(() => baseRequestMock.headers).thenReturn({});
      final result = await httpTwitterAuthenticatorDecorator.send(
        baseRequestMock,
      );
      expect(result.request?.headers, headers);
      expect(result.request?.url.origin, baseUrl);
      expect(result.request?.url.path, pathUrl);
      expect(result.request?.method, method);
    });

    test(
        'when a path with a different base url is passed'
        ', the base url must be replaced with https://api.twitter.com',
        () async {
      final baseRequestUrl = Uri.parse('https://other_url.com$pathUrl');
      when(() => baseRequestMock.url).thenReturn(baseRequestUrl);
      when(() => baseRequestMock.headers).thenReturn({});
      final result = await httpTwitterAuthenticatorDecorator.send(
        baseRequestMock,
      );
      expect(result.request?.headers, headers);
      expect(result.request?.url.origin, baseUrl);
      expect(result.request?.url.path, pathUrl);
      expect(result.request?.method, method);
    });
  });
}
