import '../../../domain/either/either.dart';
import '../../../domain/failures/http_request/http_request_failure.dart';
import '../../../domain/models/media/media.dart';
import '../../../domain/models/user/user.dart';
import '../../http/http.dart';
import '../local/session_service.dart';
import '../utils/handle_failure.dart';

class AccountApi {
  final Http _http;
  final SessionService _sessionService;

  AccountApi(this._http, this._sessionService);

  Future<User?> getAccount(String sessionId) async {
    final result = await _http.request('/account',
        queryParameters: {'session_id': sessionId}, onSuccess: (json) {
      return User.fromJson(json);
    });
    return result.when(left: (failure) => null, right: (user) => user);
  }

  Future<Either<HttpRequestFailure, Map<int, Media>>> getFavorites(
      MediaType type) async {
    final sessionId = await _sessionService.sessionId ?? '';
    final accountId = await _sessionService.accountId;
    final result = await _http.request(
        '/account/${accountId}/favorite/${type == MediaType.movie ? "movies" : "tv"}',
        queryParameters: {
          'session_id': sessionId,
        }, onSuccess: (json) {
      final list = json['results'] as List;
      final iterable = list.map((e) {
        final media = Media.fromJson({
          ...e,
          'media_type': type.name,
        });
        return MapEntry(media.id, media);
      });
      final map = <int, Media>{};
      map.addEntries(iterable);
      return map;
    });
    return result.when(
        left: handleHttpFailure, right: (value) => Either.right(value));
  }

  Future<Either<HttpRequestFailure, void>> markAsFavorite(
      {required int mediaId,
      required MediaType type,
      required bool favorite}) async {
    final accountId = await _sessionService.accountId;
    final sessionId = await _sessionService.sessionId ?? '';
    final result = await _http.request('/account/$accountId/favorite',
        queryParameters: {
          'session_id': sessionId,
        },
        body: {
          'media_type': type.name,
          'media_id': mediaId,
          'favorite': favorite,
        },
        method: HttpMethod.post,
        onSuccess: (_) => null);
    return result.when(
        left: handleHttpFailure, right: (_) => Either.right(null));
  }
}
