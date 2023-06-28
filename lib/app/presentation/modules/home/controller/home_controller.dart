import '../../../../domain/repository/trending_repository.dart';
import '../../../global/state_notifier.dart';
import 'state/home_state.dart';

class HomeController extends StateNotifier<HomeState> {
  final TrendingRepository trendingRepository;

  HomeController(super.state, {required this.trendingRepository});

  Future<void> init() async {
    final result = await trendingRepository.getMoviesAndSeries(
      state.timeWindow,
    );
    result.when(left: (_) {
      state = state.copyWith(loading: false, moviesAndSeries: null);
    }, right: (list) {
      state = state.copyWith(loading: false, moviesAndSeries: list);
    });
  }
}
