import 'package:http/http.dart';

class HttpTwitterAuthenticatorDecorator extends BaseClient {
  final Client _decoratee;
  final String _twitterBearerToken;

  HttpTwitterAuthenticatorDecorator(
    this._decoratee,
    this._twitterBearerToken,
  );

  String get _baseUrl => 'https://api.twitter.com';

  Map<String, String> get _headers => {
        'content-type': 'application/json; '
            'application=x-www-form-urlencoded; charset=utf-8',
        'Authorization': _authorization,
      };

  String get _authorization => 'Bearer $_bearerToken';

  String get _bearerToken => _twitterBearerToken;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final urlWithBaseUrl = Uri.parse('$_baseUrl${request.url.path}');
    final newBaseRequest = Request(request.method, urlWithBaseUrl);
    newBaseRequest.headers..addAll(_headers)..addAll(request.headers);
    return _decoratee.send(newBaseRequest);
  }
}
