import 'package:flutter/material.dart';

import '../../controller/state/movie_state.dart';
import 'movie_header.dart';

class MovieContent extends StatelessWidget {
  final MovieStateLoaded state;

  const MovieContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final movie = state.movie;
    return SingleChildScrollView(
      child: Column(
        children: [
          MovieHeader(movie: movie),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(movie.overview),
          )
        ],
      ),
    );
  }
}
