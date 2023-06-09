import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tv/app/data/services/remote/authentication_api.dart';

import '../../domain/either.dart';
import '../../domain/enums.dart';
import '../../domain/models/user.dart';
import '../../domain/repository/authentication_repository.dart';

const _key = 'sessionId';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final FlutterSecureStorage _secureStorage;
  final AuthenticationApi _authenticationApi;

  AuthenticationRepositoryImpl(this._secureStorage, this._authenticationApi);

  @override
  Future<User?> getUserData() {
    return Future.value(User());
  }

  @override
  Future<bool> get isSignedIn async {
    final sessionId = await _secureStorage.read(key: _key);
    return sessionId != null;
  }

  @override
  Future<Either<SignInFailure, User>> sigIn(
    String username,
    String password,
  ) async {
    final requestTokenResult = await _authenticationApi.createRequestToken();
    return requestTokenResult.when((failure) {
      return Either.left(failure);
    }, (requestToken) async {
      final loginResult = await _authenticationApi.createSessionWithLogin(
          username: username, password: password, requestToken: requestToken);
      return loginResult.when((failure) {
        return Either.left(failure);
      }, (newRequestToken) async {
        final sessionResult =
            await _authenticationApi.createSession(newRequestToken);
        return sessionResult.when((failure) async {
          return Either.left(failure);
        }, (sessionId) async {
          await _secureStorage.write(key: _key, value: sessionId);
          return Either.right(User());
        });
      });
    });
  }

  @override
  Future<void> signOut() {
    return _secureStorage.delete(key: _key);
  }
}
