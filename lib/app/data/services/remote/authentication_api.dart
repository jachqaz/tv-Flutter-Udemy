import 'dart:convert';
import 'dart:html';

import 'package:tv/app/data/http/http.dart';

import '../../../domain/either.dart';
import '../../../domain/enums.dart';

class AuthenticationApi {
  // final _baseUrl = 'https://api.themoviedb.org/3';
  // final _apiKey = 'f16c8506cda4e08300b9149a1ff5cd59';
  final Http _http;

  AuthenticationApi(this._http);

  Future<String?> createRequestToken() async {
    final result = await _http.request(
      '/authentication/token/new',
    );
    return result.when((failure) {
      return null;
    }, (responseBody) {
      final json = Map<String, dynamic>.from(jsonDecode(responseBody));
      return json['request_token'] as String;
    });
  }

  Future<Either<SignInFailure, String>> createSessionWithLogin({
    required String username,
    required String password,
    required String requestToken,
  }) async {
    final result = await _http.request(
        '/authentication/token/validate_with_login',
        method: HttpMethod.post,
        body: {
          'username': 'jach1qaz',
          'password': '.5nB!PrZsHy2heJ',
          'request_token': requestToken,
        });
    return result.when((failure) {
      if (failure.statusCode != null) {
        switch (failure.statusCode!) {
          case HttpStatus.ok:
            final json = Map<String, dynamic>.from(jsonDecode(response.body));
            return Either.right(json['request_token']);
          case HttpStatus.unauthorized:
            return Either.left(SignInFailure.unauthorized);
          case HttpStatus.notFound:
            return Either.left(SignInFailure.notFound);
          default:
            return Either.left(SignInFailure.unknown);
        }
      }
      if (failure.exception is NetworkException) {
        return Either.left(SignInFailure.network);
      }
      return Either.left(SignInFailure.unknown);
    }, (responseBody) {
      final json = Map<String, dynamic>.from(jsonDecode(responseBody));
      return Either.right(json['request_token']);
    });
  }

  Future<Either<SignInFailure, String>> createSession(
      String requestToken) async {
    try {
      final response = await _client.post(
          Uri.parse('$_baseUrl/authentication/session/new?api_key=$_apiKey'),
          headers: {'content-type': 'application/json'},
          body: jsonEncode({
            'request_token': requestToken,
          }));
      if (response.statusCode == HttpStatus.ok) {
        final json = Map<String, dynamic>.from(jsonDecode(response.body));
        final sessionId = json['session_id'] as String;
        return Either.right(sessionId);
      }
      return Either.left(SignInFailure.unknown);
    } catch (e) {
      if (e is SocketException) {
        return Either.left(SignInFailure.network);
      }
      return Either.left(SignInFailure.unknown);
    }
  }
}
