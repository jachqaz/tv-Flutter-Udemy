import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../domain/models/media/media.dart';
import '../../../../../global/utils/get_image_url.dart';
import '../../../../movie/views/movie_view.dart';

class TrendingTile extends StatelessWidget {
  final Media media;
  final double width;
  final bool showData;

  const TrendingTile(
      {super.key,
      required this.media,
      required this.width,
      this.showData = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (media.type == MediaType.movie) {
          // Navigator.pushNamed(context, Routes.movie, arguments: media.id);
          // Navigator.pushNamed(context, '${Routes.movie}/${media.id}');
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => MovieView(movieId: media.id)));
        }
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: width,
            child: Stack(
              children: [
                Positioned.fill(
                    child: ExtendedImage.network(
                  getImageUrl(media.posterPath),
                  fit: BoxFit.cover,
                  loadStateChanged: (state) {
                    if (state.extendedImageLoadState == LoadState.loading) {
                      return Container(
                        color: Colors.black12,
                      );
                    }
                    return state.completedWidget;
                  },
                )),
                if (showData)
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Opacity(
                      opacity: 0.7,
                      child: Column(
                        children: [
                          Chip(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            label: Text(
                              media.voteAverage.toStringAsFixed(1),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Chip(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            label: Icon(
                              media.type == MediaType.movie
                                  ? Icons.movie
                                  : Icons.tv,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )),
    );
  }
}
