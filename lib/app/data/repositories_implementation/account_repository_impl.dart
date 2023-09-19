import '../../domain/models/user/user.dart';
import '../../domain/repository/account_repository.dart';
import '../services/local/session_service.dart';
import '../services/remote/account_api.dart';

const _key = 'sessionId';

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
}
