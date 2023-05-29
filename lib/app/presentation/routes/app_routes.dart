import 'package:flutter/cupertino.dart';
import 'package:tv/app/presentation/routes/routes.dart';

import '../modules/splash/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashView(),
  };
}
