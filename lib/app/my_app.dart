import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'generated/assets.gen.dart';
import 'presentation/global/controllers/theme_controller.dart';
import 'presentation/modules/movie/views/movie_view.dart';
import 'presentation/routes/app_routes.dart';
import 'presentation/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = context.watch();
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        initialRoute: Routes.splash,
        routes: appRoutes,
        theme: themeController.darkMode ? ThemeData.dark() : ThemeData.light(),
        onUnknownRoute: (_) => MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Assets.svgs.error404.svg(),
                  ),
                )),
        onGenerateRoute: (settings) {
          try {
            final uri = Uri.parse(settings.name ?? '');
            final path = uri.path;
            if (path == Routes.movie) {
              return null;
              // return MaterialPageRoute(
              // settings: settings.copyWith(name: Routes.home),
              //   builder: (_) => const HomeView())
            }
            if (path.startsWith(Routes.movie)) {
              final id = int.parse(uri.pathSegments.last);
              return MaterialPageRoute(
                builder: (_) => MovieView(movieId: id),
                settings: settings,
              );
            }
            return null;
          } catch (e) {
            return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                  child: Text(e.toString()),
                ),
              ),
              settings: settings,
            );
          }
        },
      ),
    );
  }
}
