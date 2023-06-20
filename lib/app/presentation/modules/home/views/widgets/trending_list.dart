import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/either/either.dart';
import '../../../../../domain/enums.dart';
import '../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../../domain/repository/trending_repository.dart';

typedef EitherListMedia = Either<HttpRequestFailure, List<Media>>;

class TrendingList extends StatelessWidget {
  const TrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    final TrendingRepository repository = context.read();
    return SizedBox(
      height: 250,
      child: Center(
        child: FutureBuilder<EitherListMedia>(
          future: repository.getMoviesAndSeries(TimeWindow.day),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text('Error');
            }
            return Text(snapshot.data?.toString() ?? '');
          },
        ),
      ),
    );
  }
}
