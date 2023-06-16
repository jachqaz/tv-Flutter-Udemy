import '../../../domain/models/user.dart';
import '../../../domain/repository/authentication_repository.dart';
import '../state_notifier.dart';

class SessionController extends StateNotifier<User?> {
  final AuthenticationRepository authenticationRepository;

  SessionController({required this.authenticationRepository}) : super(null);

  void setUser(User user) {
    state = user;
  }

  Future<void> signOut() async {
    await authenticationRepository.signOut();
    onlyUpdate(null);
  }
}
