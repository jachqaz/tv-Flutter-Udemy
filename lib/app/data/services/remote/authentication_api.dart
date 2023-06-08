import 'dart:convert';

import 'package:http/http.dart';

class AuthenticationApi {
  final Client _client;
  final _baseUrl = 'https://api.themoviedb.org/3';
  final _apiKey = 'f16c8506cda4e08300b9149a1ff5cd59';

  AuthenticationApi(this._client);

  Future<String?> createRequestToken() async {
    final response = await _client
        .get(Uri.parse('$_baseUrl/authentication/token/new?api_key=$_apiKey'));
    if (response.statusCode == 200) {
      final json = Map<String, dynamic>.from(jsonDecode(response.body));
      return json['request_token'];
    }
    return null;
  }
}
