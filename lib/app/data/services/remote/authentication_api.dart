import 'dart:convert';
import 'dart:io';

import '../../../domain/either.dart';
import '../../../domain/enums.dart';
import '../../http/http.dart';

class AuthenticationApi {
  final Http _http;

  AuthenticationApi(this._http);

  Future<Either<SignInFailure, String>> createRequestToken() async {
    final result = await _http.request(
      '/authentication/token/new',
    );
    return result.when((failure) {
      if (failure.exception == NetworkException) {
        return Either.left(SignInFailure.network);
      }
      return Either.left(SignInFailure.unknown);
    }, (responseBody) {
      final json = Map<String, dynamic>.from(jsonDecode(responseBody));
      return Either.right(json['request_token']);
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
      if (failure.exception == NetworkException) {
        return Either.left(SignInFailure.network);
      }
      if (failure.statusCode != null) {
        switch (failure.statusCode!) {
          case HttpStatus.unauthorized:
            return Either.left(SignInFailure.unauthorized);
          case HttpStatus.notFound:
            return Either.left(SignInFailure.notFound);
          default:
            return Either.left(SignInFailure.unknown);
        }
      }
      return Either.left(SignInFailure.unknown);
    }, (responseBody) {
      final json = Map<String, dynamic>.from(jsonDecode(responseBody));
      return Either.right(json['request_token']);
    });
  }

  Future<Either<SignInFailure, String>> createSession(
      String requestToken) async {
    final result = await _http
        .request('/authentication/session/new', method: HttpMethod.post, body: {
      'request_token': requestToken,
    });
    return result.when((failure) {
      if (failure.exception == NetworkException) {
        return Either.left(SignInFailure.network);
      }
      return Either.left(SignInFailure.unknown);
    }, (responseBody) {
      final json = Map<String, dynamic>.from(jsonDecode(responseBody));
      final sessionId = json['session_id'] as String;
      return Either.right(sessionId);
    });
  }
}
