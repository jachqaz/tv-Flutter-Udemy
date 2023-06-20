import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:tv/app/my_app.dart';

import 'app/data/http/http.dart';
import 'app/data/repositories_implementation/account_repository_impl.dart';
import 'app/data/repositories_implementation/authentication_repository_impl.dart';
import 'app/data/repositories_implementation/connectivity_repository_impl.dart';
import 'app/data/repositories_implementation/trending_repository_impl.dart';
import 'app/data/services/local/session_service.dart';
import 'app/data/services/remote/account_api.dart';
import 'app/data/services/remote/authentication_api.dart';
import 'app/data/services/remote/internet_checker.dart';
import 'app/data/services/remote/trending_api.dart';
import 'app/domain/repository/account_repository.dart';
import 'app/domain/repository/authentication_repository.dart';
import 'app/domain/repository/connectivity_repository.dart';
import 'app/domain/repository/trending_repository.dart';
import 'app/presentation/global/controllers/session_controller.dart';

void main() {
  final sessionService = SessionService(FlutterSecureStorage());
  final http = Http(
      client: Client(),
      baseUrl: 'https://api.themoviedb.org/3',
      apiKey: 'f16c8506cda4e08300b9149a1ff5cd59');
  final accountApi = AccountApi(http);
  runApp(MultiProvider(
    providers: [
      Provider<AccountRepository>(
        create: (context) => AccountRepositoryImpl(
          accountApi,
          sessionService,
        ),
      ),
      Provider<ConnectivityRepository>(
          create: (context) => ConnectivityRepositoryImpl(
                Connectivity(),
                InternetChecker(),
              )),
      Provider<AuthenticationRepository>(
        create: (context) => AuthenticationRepositoryImpl(
            AuthenticationApi(http), accountApi, sessionService),
      ),
      Provider<TrendingRepository>(
        create: (context) => TrendingRepositoryImpl(
          TrendingApi(http),
        ),
      ),
      ChangeNotifierProvider(
          create: (context) => SessionController(
                authenticationRepository: context.read(),
              )),
    ],
    child: MyApp(),
  ));
}
