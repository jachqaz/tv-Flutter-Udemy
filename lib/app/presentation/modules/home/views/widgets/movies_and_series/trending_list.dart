import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tv/app/presentation/modules/home/views/widgets/movies_and_series/trending_tile.dart';
import 'package:tv/app/presentation/modules/home/views/widgets/movies_and_series/trending_time_window.dart';

import '../../../../../../domain/either/either.dart';
import '../../../../../../domain/enums.dart';
import '../../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../../domain/models/media/media.dart';
import '../../../../../../domain/repository/trending_repository.dart';
import '../../../../../global/widgets/request_failed.dart';

typedef EitherListMedia = Either<HttpRequestFailure, List<Media>>;

class TrendingList extends StatefulWidget {
  const TrendingList({super.key});

  @override
  State<TrendingList> createState() => _TrendingListState();
}

class _TrendingListState extends State<TrendingList> {
  TrendingRepository get _repository => context.read();
  late Future<EitherListMedia> _future;
  TimeWindow _timeWindow = TimeWindow.day;

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
        TrendingTimeWindow(timeWindow: _timeWindow, onChanged: _updateFuture),
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
                  key: ValueKey(_future),
                  future: _future,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return snapshot.data!.when(
                        left: (failure) => RequestFail(
                              onRetry: () {
                                _updateFuture(_timeWindow);
                              },
                            ),
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

  void _updateFuture(TimeWindow timeWindow) {
    setState(() {
      _timeWindow = timeWindow;
      _future = _repository.getMoviesAndSeries(_timeWindow);
    });
  }
}
