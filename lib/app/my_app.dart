import 'package:flutter/material.dart';
import 'package:tv/app/presentation/modules/home/views/home_view.dart';

import 'presentation/modules/movie/views/movie_view.dart';
import 'presentation/routes/app_routes.dart';
import 'presentation/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        initialRoute: Routes.splash,
        routes: appRoutes,
        onGenerateRoute: (settings) {
          final name = settings.name ?? '';
          if (name == Routes.movie) {
            return MaterialPageRoute(
                // settings: settings.copyWith(name: Routes.home),
                builder: (_) => HomeView());
          }
          if (name.startsWith(Routes.movie)) {
            final id = int.parse(
                name.substring(name.lastIndexOf('/') + 1, name.length));
            return MaterialPageRoute(
              builder: (_) => MovieView(movieId: id),
              settings: settings,
            );
          }
          return null;
        },
      ),
    );
  }
}
