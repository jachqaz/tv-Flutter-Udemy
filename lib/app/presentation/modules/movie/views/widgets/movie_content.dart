import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../global/utils/get_image_url.dart';
import '../../controller/state/movie_state.dart';

class MovieContent extends StatelessWidget {
  final MovieStateLoaded state;

  const MovieContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final movie = state.movie;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 13,
                  child: ExtendedImage.network(
                    getImageUrl(movie.backdropPath,
                        imageQuality: ImageQuality.original),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.transparent,
                          Colors.black54,
                          Colors.black
                        ])),
                    padding: const EdgeInsets.all(15).copyWith(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          spacing: 10,
                          children: movie.genres
                              .map((e) => Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: Text(
                                      e.name,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
