import 'dart:io';

import '../../../domain/either.dart';
import '../../../domain/failures/sign_in/sign_in_failure.dart';
import '../../http/http.dart';

class AuthenticationApi {
  final Http _http;

  AuthenticationApi(this._http);

  Either<SignInFailure, String> _handleFailure(HttpFailure failure) {
    if (failure.exception == NetworkException) {
      return Either.left(SignInFailure.network());
    }
    if (failure.statusCode != null) {
      switch (failure.statusCode!) {
        case HttpStatus.unauthorized:
          return Either.left(SignInFailure.unauthorized());
        case HttpStatus.notFound:
          return Either.left(SignInFailure.notFound());
        default:
          return Either.left(SignInFailure.unknown());
      }
    }
    return Either.left(SignInFailure.unknown());
  }

  Future<Either<SignInFailure, String>> createRequestToken() async {
    final result = await _http.request('/authentication/token/new',
        onSuccess: (responseBody) {
      final json = responseBody as Map;
      return json['request_token'] as String;
    });
    return result.when(
        left: _handleFailure,
        right: (requestToken) => Either.right(requestToken));
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
        }, onSuccess: (responseBody) {
      final json = responseBody as Map;
      return json['request_token'] as String;
    });
    return result.when(
        left: _handleFailure,
        right: (newRequestToken) => Either.right(newRequestToken));
  }

  Future<Either<SignInFailure, String>> createSession(
      String requestToken) async {
    final result = await _http
        .request('/authentication/session/new', method: HttpMethod.post, body: {
      'request_token': requestToken,
    }, onSuccess: (responseBody) {
      final json = responseBody as Map;
      return json['session_id'] as String;
    });
    return result.when(
        left: _handleFailure, right: (sessionId) => Either.right(sessionId));
  }
}
