import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/either/either.dart';
import '../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../domain/models/performer/performer.dart';
import '../../../../../domain/repository/movies_repository.dart';
import '../../../../global/utils/get_image_url.dart';
import '../../../../global/widgets/request_failed.dart';

class MovieCast extends StatefulWidget {
  final int movieId;

  const MovieCast({super.key, required this.movieId});

  @override
  State<StatefulWidget> createState() => _MovieCastState();
}

class _MovieCastState extends State<MovieCast> {
  late Future<Either<HttpRequestFailure, List<Performer>>> _future;

  @override
  void initState() {
    super.initState();
    _initFuture();
  }

  void _initFuture() {
    _future = context.read<MoviesRepository>().getCastByMovie(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Either<HttpRequestFailure, List<Performer>>>(
      key: ValueKey(_future),
      future: _future,
      builder: (_, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return snapshot.data!.when(
            left: (_) => RequestFail(onRetry: () {
                  setState(() {
                    _initFuture();
                  });
                }),
            right: (cast) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Cast',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        separatorBuilder: (_, __) => SizedBox(
                          width: 10,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          final performer = cast[index];
                          return Column(
                            children: [
                              Expanded(child:
                                  LayoutBuilder(builder: (_, constraints) {
                                final size = constraints.maxHeight;
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(size / 2),
                                  child: ExtendedImage.network(
                                    getImageUrl(performer.profilePath),
                                    height: size,
                                    width: size,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              })),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                performer.name,
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: cast.length,
                      ),
                    ),
                  ],
                ));
      },
    );
  }
}
