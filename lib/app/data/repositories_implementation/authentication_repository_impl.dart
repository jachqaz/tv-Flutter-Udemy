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
    final request_token = await _authenticationApi.createRequestToken();
    print(request_token);
    await Future.delayed(Duration(seconds: 2));
    if (username != 'test') {
      return Either.left(SignInFailure.notFound);
    }
    if (password != '123456') {
      return Either.left(SignInFailure.unauthorized);
    }
    await _secureStorage.write(key: _key, value: 'value');
    return Either.right(User());
  }

  @override
  Future<void> signOut() {
    return _secureStorage.delete(key: _key);
  }
}
