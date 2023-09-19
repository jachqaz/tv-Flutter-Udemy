import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/models/movie/movie.dart';
import '../../../../global/utils/get_image_url.dart';

class MovieHeader extends StatelessWidget {
  final Movie movie;

  const MovieHeader({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
            aspectRatio: 16 / 13,
          child: movie.backdropPath != null
              ? ExtendedImage.network(
                  getImageUrl(movie.backdropPath!,
                      imageQuality: ImageQuality.original),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
                )
              : Container(
                  color: Colors.black54,
                ),
        ),
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
              child: Row(
                children: [
                  Expanded(
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
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            value: (movie.voteAverage / 10).clamp(0.0, 1.0),
                          )),
                      Text(
                        movie.voteAverage.toStringAsFixed(1),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
