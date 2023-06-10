import 'package:flutter/foundation.dart';
import 'package:tv/app/presentation/modules/sign_in/controller/sign_in_state.dart';

class SignInController extends ChangeNotifier {
  bool _mounted = true;

  SignInState _state = SignInState();

  SignInState get state => _state;

  bool get mounted => _mounted;

  void onUsernameChanged(String text) {
    _state = _state.copyWith(username: text.trim().toLowerCase());
  }

  void onPasswordChanged(String text) {
    _state = _state.copyWith(password: text.replaceAll(' ', ''));
  }

  void onFetchingChanged(bool value) {
    _state = _state.copyWith(fetching: value);
    notifyListeners();
  }

  @override
  void dispose() {
    _mounted = true;
    super.dispose();
  }
}
