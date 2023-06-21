import '../../domain/either/either.dart';
import '../../domain/enums.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/media/media.dart';
import '../../domain/models/performer/performer.dart';
import '../../domain/repository/trending_repository.dart';
import '../services/remote/trending_api.dart';

class TrendingRepositoryImpl implements TrendingRepository {
  final TrendingApi _trendingApi;

  TrendingRepositoryImpl(this._trendingApi);

  @override
  Future<Either<HttpRequestFailure, List<Media>>> getMoviesAndSeries(
      TimeWindow timeWindow) {
    return _trendingApi.getMoviesAndSeries(timeWindow);
  }

  @override
  Future<Either<HttpRequestFailure, List<Performer>>> getPerformers() {
    return _trendingApi.getPerformers(TimeWindow.day);
  }
}
