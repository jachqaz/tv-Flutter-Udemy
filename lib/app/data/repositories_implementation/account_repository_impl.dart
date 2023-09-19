import '../../domain/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/media/media.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repository/account_repository.dart';
import '../services/local/session_service.dart';
import '../services/remote/account_api.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountApi _accountApi;
  final SessionService _sessionService;

  AccountRepositoryImpl(this._accountApi, this._sessionService);

  @override
  Future<User?> getUserData() async {
    final user =
        await _accountApi.getAccount(await _sessionService.sessionId ?? '');
    if (user != null) {
      _sessionService.saveAccountId(user.id.toString());
    }
    return user;
  }

  @override
  Future<Either<HttpRequestFailure, Map<int, Media>>> getFavorites(
      MediaType type) {
    return _accountApi.getFavorites(type);
  }

  @override
  Future<Either<HttpRequestFailure, void>> markAsFavorite(
      {required int mediaId, required MediaType type, required bool favorite}) {
    return _accountApi.markAsFavorite(
        mediaId: mediaId, type: type, favorite: favorite);
  }
}
