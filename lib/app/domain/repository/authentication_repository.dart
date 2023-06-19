import 'package:tv/app/domain/either.dart';

import '../enums.dart';
import '../models/user/user.dart';

abstract class AuthenticationRepository {
  Future<bool> get isSignedIn;

  Future<void> signOut();

  Future<Either<SignInFailure, User>> sigIn(
    String username,
    String password,
  );
}
