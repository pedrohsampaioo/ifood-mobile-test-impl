import 'package:http/http.dart';

import 'http_handle_request_options_decorator.dart';

class HttpGoogleLanguageDecorator extends HttpHandleRequestOptionsDecorator {
  final String _key;

  HttpGoogleLanguageDecorator(
    Client decoratee,
    this._key,
  ) : super(decoratee);

  @override
  String get baseUrl => 'https://language.googleapis.com';

  @override
  Map<String, String> get headers => {
        'content-type': 'application/json; charset=utf-8',
        'Accept': 'application/json',
      };

  @override
  String get addEndOfPath => '?key=$_key';
}
