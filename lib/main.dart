import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:tv/app/my_app.dart';

import 'app/data/repositories_implementation/authentication_repository_impl.dart';
import 'app/data/repositories_implementation/connectivity_repository_impl.dart';
import 'app/data/services/remote/authentication_api.dart';
import 'app/data/services/remote/internet_checker.dart';
import 'app/domain/repository/authentication_repository.dart';
import 'app/domain/repository/connectivity_repository.dart';

void main() {
  runApp(Injector(
    connectivityRepository: ConnectivityRepositoryImpl(
      Connectivity(),
      InternetChecker(),
    ),
    authenticationRepository: AuthenticationRepositoryImpl(
      const FlutterSecureStorage(),
      AuthenticationApi(
        Client(),
      ),
    ),
    child: const MyApp(),
  ));
}

class Injector extends InheritedWidget {
  final ConnectivityRepository connectivityRepository;
  final AuthenticationRepository authenticationRepository;

  const Injector({
    super.key,
    required super.child,
    required this.connectivityRepository,
    required this.authenticationRepository,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static Injector of(BuildContext context) {
    final injector = context.dependOnInheritedWidgetOfExactType<Injector>();
    assert(injector != null, 'Injector could not be found');
    return injector!;
  }
}
