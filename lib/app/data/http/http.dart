import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../../domain/either.dart';

part 'failure.dart';
part 'logs.dart';
part 'parse_response_body.dart';

enum HttpMethod { get, post, patch, delete, put }

class Http {
  final Client _client;
  final String _baseUrl;
  final String _apiKey;

  Http(
      {required Client client, required String baseUrl, required String apiKey})
      : _client = client,
        _baseUrl = baseUrl,
        _apiKey = apiKey;

  Future<Either<HttpFailure, R>> request<R>(
    String path, {
    required R Function(dynamic responseBody) onSuccess,
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
    bool useApiKey = true,
  }) async {
    Map<String, dynamic> logs = {};
    StackTrace? stackTrace;
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
      logs = {
        'url': url.toString(),
        'method': method.name,
        'body': body,
      };
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
      final responseBody = _parseResponseBody(response.body);
      logs = {
        ...logs,
        'statusCode': statusCode,
        'responseBody': _parseResponseBody(response.body),
      };
      if (statusCode >= 200) {
        return Either.right(onSuccess(responseBody));
      }
      return Either.left(HttpFailure(statusCode: statusCode));
    } catch (e, s) {
      stackTrace = s;
      logs = {
        ...logs,
        'startTime': DateTime.now().toString(),
        'exception': e.runtimeType,
      };
      if (e is SocketException || e is ClientException) {
        logs = {
          ...logs,
          'exception': e.toString(),
        };
        return Either.left(HttpFailure(exception: NetworkException));
      }
      return Either.left(HttpFailure(exception: e));
    } finally {
      if (kDebugMode) {
        logs = {
          ...logs,
          'endTime': DateTime.now().toString(),
        };
        _printLogs(logs, stackTrace);
      }
    }
  }
}
