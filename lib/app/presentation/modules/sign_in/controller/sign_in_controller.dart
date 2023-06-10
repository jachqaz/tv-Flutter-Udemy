import 'package:tv/app/presentation/modules/sign_in/controller/sign_in_state.dart';

import '../../../global/state_notifier.dart';

class SignInController extends StateNotifier<SignInState> {
  SignInController(super.state);

  void onUsernameChanged(String text) {
    onlyUpdate(state.copyWith(username: text.trim().toLowerCase()));
  }

  void onPasswordChanged(String text) {
    onlyUpdate(state.copyWith(password: text.replaceAll(' ', '')));
  }

  void onFetchingChanged(bool value) {
    state = state.copyWith(fetching: value);
  }
}
