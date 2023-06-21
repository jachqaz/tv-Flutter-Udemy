import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../domain/either/either.dart';
import '../../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../../domain/models/performer/performer.dart';
import '../../../../../../domain/repository/trending_repository.dart';
import 'performer_tile.dart';

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
              right: (list) => PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final performer = list[index];
                  return PerformerTile(performer: performer);
                },
              ),
            );
          }),
    );
  }
}
