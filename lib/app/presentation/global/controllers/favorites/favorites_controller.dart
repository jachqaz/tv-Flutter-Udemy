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

  Future<void> markAsFavorite(Media media) async {
    state.mapOrNull(loaded: (loadedState) async {
      final isMovie = media.type == MediaType.movie;
      final map = isMovie ? {...loadedState.movies} : {...loadedState.series};
      final favorite = !map.keys.contains(media.id);
      final result = await accountRepository.markAsFavorite(
          mediaId: media.id, type: media.type, favorite: favorite);
      result.whenOrNull(right: (_) {
        if (favorite) {
          map[media.id] = media;
        } else {
          map.remove(media.id);
        }
        state = isMovie
            ? loadedState.copyWith(movies: map)
            : loadedState.copyWith(series: map);
      });
    });
  }
}
