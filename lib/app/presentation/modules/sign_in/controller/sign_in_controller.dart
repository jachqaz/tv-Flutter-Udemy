import '../../../../domain/either.dart';
import '../../../../domain/enums.dart';
import '../../../../domain/models/user.dart';
import '../../../../domain/repository/authentication_repository.dart';
import '../../../global/state_notifier.dart';
import 'sign_in_state.dart';

class SignInController extends StateNotifier<SignInState> {
  SignInController(super.state, {required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  void onUsernameChanged(String text) {
    onlyUpdate(state.copyWith(username: text.trim().toLowerCase()));
  }

  void onPasswordChanged(String text) {
    onlyUpdate(state.copyWith(password: text.replaceAll(' ', '')));
  }

  Future<Either<SignInFailure, User>> submit() async {
    state = state.copyWith(fetching: true);
    final result = await authenticationRepository.sigIn(
      state.username,
      state.password,
    );
    result.when(
        (failure) => state = state.copyWith(fetching: false), (value) => null);
    return result;
  }
}
