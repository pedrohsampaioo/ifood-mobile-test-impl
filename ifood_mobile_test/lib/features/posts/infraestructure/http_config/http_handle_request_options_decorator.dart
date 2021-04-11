import 'package:http/http.dart';

abstract class HttpHandleRequestOptionsDecorator extends BaseClient {
  final Client _decoratee;

  HttpHandleRequestOptionsDecorator(this._decoratee);

  String get baseUrl;

  Map<String, String> get headers;

  String get addEndOfPath => '';

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final urlWithBaseUrl = Uri.parse(
      '$baseUrl${request.url.path}$addEndOfPath',
    );
    final newBaseRequest = Request(request.method, urlWithBaseUrl);
    newBaseRequest.headers..addAll(request.headers)..addAll(headers);
    newBaseRequest.body = (request as Request).body;
    return _decoratee.send(newBaseRequest);
  }
}
