import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/widgets/request_failed.dart';
import '../controller/movie_controller.dart';
import '../controller/state/movie_state.dart';

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
          appBar: AppBar(),
          body: controller.state.when(
              loading: () => CircularProgressIndicator(),
              failed: () => RequestFail(
                    onRetry: () => controller.init(),
                  ),
              loaded: (movie) => Center(
                    child: Text('MOVIE'),
                  )),
        );
      },
    );
  }
}
