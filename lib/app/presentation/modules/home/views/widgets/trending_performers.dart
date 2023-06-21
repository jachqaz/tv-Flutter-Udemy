import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/either/either.dart';
import '../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../domain/models/performer/performer.dart';
import '../../../../../domain/repository/trending_repository.dart';
import '../../../../global/utils/get_image_url.dart';

typedef EitherListPerformer = Either<HttpRequestFailure, List<Performer>>;

class TrendingPerformers extends StatefulWidget {
  const TrendingPerformers({super.key});

  @override
  State<TrendingPerformers> createState() => _TrendingPerformersState();
}

class _TrendingPerformersState extends State<TrendingPerformers> {
  late Future<EitherListPerformer> _future;

  @override
  void initState() {
    super.initState();
    _future = context.read<TrendingRepository>().getPerformers();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return snapshot.data!.when(
              left: (failure) => Text('Error'),
              right: (list) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final perfomer = list[index];
                  return SizedBox(
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ExtendedImage.network(
                                getImageUrl(perfomer.profilePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: list.length,
              ),
            );
          }),
    );
  }
}
