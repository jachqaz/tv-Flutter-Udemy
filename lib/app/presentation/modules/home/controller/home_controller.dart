import '../../../../domain/enums.dart';
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

  void onTimeWindowChanged(TimeWindow timeWindow) {
    if (state.moviesAndSeries.timeWindow != timeWindow) {
      state = state.copyWith(
          moviesAndSeries: MoviesAndSeriesState.loading(timeWindow));
      loadMoviesAndSeries();
    }
  }

  Future<void> loadMoviesAndSeries(
      {MoviesAndSeriesState? moviesAndSeries}) async {
    if (moviesAndSeries != null) {
      state = state.copyWith(moviesAndSeries: moviesAndSeries);
    }
    final result = await trendingRepository.getMoviesAndSeries(
      state.moviesAndSeries.timeWindow,
    );
    state = result.when(
        left: (_) => state.copyWith(
            moviesAndSeries:
                MoviesAndSeriesState.failed(state.moviesAndSeries.timeWindow)),
        right: (list) => state.copyWith(
                moviesAndSeries: MoviesAndSeriesState.loaded(
              timeWindow: state.moviesAndSeries.timeWindow,
              list: list,
            )));
  }

  Future<void> loadPerformers({
    PerformersState? performers,
  }) async {
    if (performers != null) {
      state = state.copyWith(performers: performers);
    }
    final result = await trendingRepository.getPerformers();
    state = result.when(
        left: (_) => state.copyWith(
              performers: const PerformersState.failed(),
            ),
        right: (list) => state = state.copyWith(
              performers: PerformersState.loaded(list),
            ));
  }
}
