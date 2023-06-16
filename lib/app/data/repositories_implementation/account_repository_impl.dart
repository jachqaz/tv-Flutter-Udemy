import '../../domain/models/user.dart';
import '../../domain/repository/account_repository.dart';
import '../services/remote/account_api.dart';

const _key = 'sessionId';

class AccountRepositoryImpl implements AccountRepository {
  final AccountApi _accountApi;

  AccountRepositoryImpl(this._accountApi);

  @override
  Future<User?> getUserData() {
    return _accountApi.getAccount(sessionId);
  }
}
