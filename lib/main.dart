import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:tv/app/my_app.dart';

import 'app/data/http/http.dart';
import 'app/data/repositories_implementation/authentication_repository_impl.dart';
import 'app/data/repositories_implementation/connectivity_repository_impl.dart';
import 'app/data/services/remote/authentication_api.dart';
import 'app/data/services/remote/internet_checker.dart';
import 'app/domain/repository/authentication_repository.dart';
import 'app/domain/repository/connectivity_repository.dart';

void main() {
  runApp(Provider<ConnectivityRepository>(
    create: (context) => ConnectivityRepositoryImpl(
      Connectivity(),
      InternetChecker(),
    ),
    child: Provider<AuthenticationRepository>(
      create: (context) => AuthenticationRepositoryImpl(
          const FlutterSecureStorage(),
          AuthenticationApi(
            Http(
                client: Client(),
                baseUrl: 'https://api.themoviedb.org/3',
                apiKey: 'f16c8506cda4e08300b9149a1ff5cd59'),
          )),
      child: MyApp(),
    ),
  ));
}
