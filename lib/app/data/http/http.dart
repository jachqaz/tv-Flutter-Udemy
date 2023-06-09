import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../domain/either.dart';

class Http {
  final Client _client;
  final String _baseUrl;
  final String _apiKey;

  Http(
      {required Client client, required String baseUrl, required String apiKey})
      : _client = client,
        _baseUrl = baseUrl,
        _apiKey = apiKey;

  Future<Either<HttpFailure, String>> request(
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
    bool useApiKey = true,
  }) async {
    try {
      if (useApiKey) {
        queryParameters = {...queryParameters, 'api_key': _apiKey};
      }
      Uri url = Uri.parse(
        path.startsWith('http') ? path : '$_baseUrl$path',
      );
      if (queryParameters.isNotEmpty) {
        url = url.replace(queryParameters: queryParameters);
      }
      headers = {'content-type': 'application/json', ...headers};
      final bodyString = jsonEncode(body);
      late final Response response;
      switch (method) {
        case HttpMethod.get:
          response = await _client.get(url);
          break;
        case HttpMethod.post:
          response =
              await _client.post(url, headers: headers, body: bodyString);
          break;
        case HttpMethod.patch:
          response =
              await _client.patch(url, headers: headers, body: bodyString);
          break;
        case HttpMethod.delete:
          response =
              await _client.delete(url, headers: headers, body: bodyString);
          break;
        case HttpMethod.put:
          response = await _client.put(url, headers: headers, body: bodyString);
          break;
      }
      final statusCode = response.statusCode;
      if (statusCode >= 200) {
        return Either.right(response.body);
      }
      return Either.left(HttpFailure(statusCode: statusCode));
    } catch (e) {
      if (e is SocketException || e is ClientException) {
        return Either.left(HttpFailure(exception: NetworkException));
      }
      return Either.left(HttpFailure(exception: e));
    }
  }
}

class HttpFailure {
  final int? statusCode;
  final Object? exception;

  HttpFailure({this.statusCode, this.exception});
}

class NetworkException {}

enum HttpMethod { get, post, patch, delete, put }
