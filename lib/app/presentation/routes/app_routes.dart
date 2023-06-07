import 'package:flutter/cupertino.dart';
import 'package:tv/app/presentation/routes/routes.dart';

import '../modules/home/views/home_view.dart';
import '../modules/offline/offline_view.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/splash/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashView(),
    Routes.signIn: (context) => const SignInView(),
    Routes.home: (context) => const HomeView(),
    Routes.offline: (context) => const OfflineView(),
  };
}
