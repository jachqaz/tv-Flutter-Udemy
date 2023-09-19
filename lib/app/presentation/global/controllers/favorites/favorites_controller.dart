import 'package:tv/app/domain/repository/account_repository.dart';

import '../../../../domain/models/media/media.dart';
import '../../state_notifier.dart';
import 'favorites_state.dart';

class FavoritesController extends StateNotifier<FavoritesState> {
  final AccountRepository accountRepository;

  FavoritesController(super.state, {required this.accountRepository});

  Future<void> init() async {
    state = FavoritesState.loading();
    final moviesResult = await accountRepository.getFavorites(MediaType.movie);
    state = await moviesResult.when(
        left: (_) => FavoritesState.failed(),
        right: (movies) async {
          final seriesResult =
              await accountRepository.getFavorites(MediaType.tv);
          return seriesResult.when(
              left: (_) => FavoritesState.failed(),
              right: (series) =>
                  FavoritesState.loaded(movies: movies, series: series));
        });
  }
}
