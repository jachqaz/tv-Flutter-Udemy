import '../../../../domain/repository/trending_repository.dart';
import '../../../global/state_notifier.dart';
import 'state/home_state.dart';

class HomeController extends StateNotifier<HomeState> {
  final TrendingRepository trendingRepository;

  HomeController(super.state, {required this.trendingRepository});

  Future<void> init() async {
    await loadMoviesAndSeries();
    await loadPerformers();
  }

  Future<void> loadMoviesAndSeries() async {
    final result = await trendingRepository.getMoviesAndSeries(
      state.moviesAndSeries.timeWindow,
    );
    result.when(left: (_) {
      state = state.copyWith(
          moviesAndSeries:
              MoviesAndSeriesState.failed(state.moviesAndSeries.timeWindow));
    }, right: (list) {
      state = state.copyWith(
          moviesAndSeries: MoviesAndSeriesState.loaded(
        timeWindow: state.moviesAndSeries.timeWindow,
        list: list,
      ));
    });
  }

  Future<void> loadPerformers() async {
    final performersResult = await trendingRepository.getPerformers();
    performersResult.when(left: (_) {
      state = state.copyWith(
        performers: const PerformersState.failed(),
      );
    }, right: (list) {
      state = state.copyWith(
        performers: PerformersState.loaded(list),
      );
    });
  }
}
