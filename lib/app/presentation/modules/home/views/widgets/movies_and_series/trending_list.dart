import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tv/app/presentation/modules/home/views/widgets/movies_and_series/trending_tile.dart';
import 'package:tv/app/presentation/modules/home/views/widgets/movies_and_series/trending_time_window.dart';

import '../../../../../../domain/either/either.dart';
import '../../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../../domain/models/media/media.dart';
import '../../../../../global/widgets/request_failed.dart';
import '../../../controller/home_controller.dart';

typedef EitherListMedia = Either<HttpRequestFailure, List<Media>>;

class TrendingList extends StatelessWidget {
  TrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = context.watch();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrendingTimeWindow(
          timeWindow: controller.state.timeWindow,
          onChanged: (timeWindow) {},
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
                  child: controller.state.loading
                      ? CircularProgressIndicator()
                      : controller.state.moviesAndSeries == null
                          ? RequestFail(onRetry: () {})
                          : ListView.separated(
                              separatorBuilder: (_, __) => SizedBox(
                                width: 10,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                final media =
                                    controller.state.moviesAndSeries![index];
                                return TrendingTile(media: media, width: width);
                              },
                              itemCount:
                                  controller.state.moviesAndSeries!.length,
                            ));
            },
          ),
        ),
      ],
    );
  }
}
