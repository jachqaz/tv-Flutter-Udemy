import '../../domain/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/movie/movie.dart';
import '../../domain/repository/movies_repository.dart';
import '../services/remote/movies_api.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesApi _moviesApi;

  MoviesRepositoryImpl(this._moviesApi);

  @override
  Future<Either<HttpRequestFailure, Movie>> getMovieById(int id) {
    return _moviesApi.getMovieById(id);
  }
}