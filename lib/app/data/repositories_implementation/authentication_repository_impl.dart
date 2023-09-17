import '../../domain/either/either.dart';
import '../../domain/failures/sign_in/sign_in_failure.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repository/authentication_repository.dart';
import '../services/local/session_service.dart';
import '../services/remote/account_api.dart';
import '../services/remote/authentication_api.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationApi _authenticationApi;
  final AccountApi _accountApi;
  final SessionService _sessionService;

  AuthenticationRepositoryImpl(
    this._authenticationApi,
    this._accountApi,
    this._sessionService,
  );

  @override
  Future<bool> get isSignedIn async {
    final sessionId = await _sessionService.sessionId;
    return sessionId != null;
  }

  @override
  Future<Either<SignInFailure, User>> sigIn(
    String username,
    String password,
  ) async {
    final requestTokenResult = await _authenticationApi.createRequestToken();
    return requestTokenResult.when(left: (failure) {
      return Either.left(failure);
    }, right: (requestToken) async {
      final loginResult = await _authenticationApi.createSessionWithLogin(
          username: username, password: password, requestToken: requestToken);
      return loginResult.when(left: (failure) {
        return Either.left(failure);
      }, right: (newRequestToken) async {
        final sessionResult =
            await _authenticationApi.createSession(newRequestToken);
        return sessionResult.when(left: (failure) async {
          return Either.left(failure);
        }, right: (sessionId) async {
          await _sessionService.saveSessionId(sessionId);
          final user = await _accountApi.getAccount(sessionId);
          if (user == null) {
            return Either.left(SignInFailure.unknown());
          }
          return Either.right(user);
        });
      });
    });
  }

  @override
  Future<void> signOut() {
    return _sessionService.signOut();
  }
}
