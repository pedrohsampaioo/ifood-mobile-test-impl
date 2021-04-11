import 'package:http/http.dart';

import 'http_handle_request_options_decorator.dart';

class HttpTwitterAuthenticatorDecorator
    extends HttpHandleRequestOptionsDecorator {
  final String _twitterBearerToken;

  HttpTwitterAuthenticatorDecorator(
    Client decoratee,
    this._twitterBearerToken,
  ) : super(decoratee);

  @override
  String get baseUrl => 'https://api.twitter.com';

  @override
  Map<String, String> get headers => {
        'content-type': 'application/json; '
            'application=x-www-form-urlencoded; charset=utf-8',
        'Authorization': _authorization,
      };

  String get _authorization => 'Bearer $_bearerToken';

  String get _bearerToken => _twitterBearerToken;
}
