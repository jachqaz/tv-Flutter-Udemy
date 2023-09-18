import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/widgets/request_failed.dart';
import '../controller/movie_controller.dart';
import '../controller/state/movie_state.dart';
import 'widgets/movie_app_bar.dart';
import 'widgets/movie_content.dart';

class MovieView extends StatelessWidget {
  final int movieId;

  const MovieView({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MovieController(
        MovieState.loading(),
        moviesRepository: context.read(),
        movieId: movieId,
      )..init(),
      builder: (context, _) {
        final MovieController controller = context.watch();
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: MovieAppBar(),
          body: controller.state.map(
              loading: (_) => const CircularProgressIndicator(),
              failed: (_) => RequestFail(
                    onRetry: () => controller.init(),
                  ),
              loaded: (state) => MovieContent(state: state)),
        );
      },
    );
  }
}
