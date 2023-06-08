import 'dart:convert';

import 'package:http/http.dart';

class AuthenticationApi {
  final Client _client;
  final _baseUrl = 'https://api.themoviedb.org/3';
  final _apiKey = 'f16c8506cda4e08300b9149a1ff5cd59';

  AuthenticationApi(this._client);

  createRequestToken() async {
    final response = await _client.get(
        Uri.parse('$_baseUrl/authentication/token/new?apikey_key=$_apiKey'));
    if (response.statusCode == 200) {
      jsonDecode(response.body);
    }
  }
}
