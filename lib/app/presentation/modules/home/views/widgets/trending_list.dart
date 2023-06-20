import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/either/either.dart';
import '../../../../../domain/enums.dart';
import '../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../../domain/repository/trending_repository.dart';
import 'trending_tile.dart';

typedef EitherListMedia = Either<HttpRequestFailure, List<Media>>;

class TrendingList extends StatefulWidget {
  const TrendingList({super.key});

  @override
  State<TrendingList> createState() => _TrendingListState();
}

class _TrendingListState extends State<TrendingList> {
  late final Future<EitherListMedia> _future;

  @override
  void initState() {
    super.initState();
    final TrendingRepository repository = context.read();
    _future = repository.getMoviesAndSeries(TimeWindow.day);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'TRENDING',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        AspectRatio(
          aspectRatio: 16 / 8,
          child: LayoutBuilder(
            builder: (context, contraints) {
              final width = contraints.maxHeight * 0.65;
              return Center(
                child: FutureBuilder<EitherListMedia>(
                  future: _future,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return snapshot.data!.when(
                        left: (failure) => Text(failure.toString()),
                        right: (list) {
                          return ListView.separated(
                            separatorBuilder: (_, __) => SizedBox(
                              width: 10,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              final media = list[index];
                              return TrendingTile(media: media, width: width);
                            },
                            itemCount: list.length,
                          );
                        });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
