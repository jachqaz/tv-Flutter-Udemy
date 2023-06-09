import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../../domain/either.dart';
import '../../../domain/enums.dart';

class AuthenticationApi {
  final Client _client;
  final _baseUrl = 'https://api.themoviedb.org/3';
  final _apiKey = 'f16c8506cda4e08300b9149a1ff5cd59';

  AuthenticationApi(this._client);

  Future<String?> createRequestToken() async {
    try {
      final response = await _client.get(
          Uri.parse('$_baseUrl/authentication/token/new?api_key=$_apiKey'));
      if (response.statusCode == 200) {
        final json = Map<String, dynamic>.from(jsonDecode(response.body));
        return json['request_token'];
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<Either<SignInFailure, String>> createSessionWithLogin({
    required String username,
    required String password,
    required String requestToken,
  }) async {
    try {
      final response = await _client.post(
          Uri.parse(
              '$_baseUrl/authentication/token/validate_with_login?api_key=$_apiKey'),
          headers: {'content-type': 'application/json'},
          body: jsonEncode({
            'username': 'jach1qaz',
            'password': '.5nB!PrZsHy2heJ',
            'request_token': requestToken,
          }));
      switch (response.statusCode) {
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
    } catch (e) {
      if (e is SocketException) {
        return Either.left(SignInFailure.network);
      }
      return Either.left(SignInFailure.unknown);
    }
  }
}
