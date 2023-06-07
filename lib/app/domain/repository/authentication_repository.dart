import 'package:tv/app/domain/either.dart';

import '../enums.dart';
import '../models/user.dart';

abstract class AuthenticationRepository {
  Future<bool> get isSignedIn;

  Future<User?> getUserData();

  Future<Either<SignInFailure, User>> sigIn(
    String username,
    String password,
  );
}
