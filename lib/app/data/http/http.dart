import 'package:http/http.dart';

class Http {
  final Client _client;
  final String _baseUrl;
  final String _apiKey;

  Http(this._baseUrl, this._apiKey, this._client);

  request(
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
  }) async {
    Uri url = Uri.parse(
      path.startsWith('http') ? path : '$_baseUrl$path',
    );
    if (queryParameters.isNotEmpty) {
      url = url.replace(queryParameters: queryParameters);
    }
    headers = {'content-type': 'application/json', ...headers};
    late final Response response;
    switch (method) {
      case HttpMethod.get:
        response = await _client.get(url);
        break;
      case HttpMethod.post:
        response = await _client.post(url, headers: headers);
        break;
      case HttpMethod.patch:
        response = await _client.patch(url, headers: headers);
        break;
      case HttpMethod.delete:
        response = await _client.delete(url, headers: headers);
        break;
      case HttpMethod.put:
        response = await _client.put(url, headers: headers);
        break;
    }
  }
}

enum HttpMethod { get, post, patch, delete, put }
