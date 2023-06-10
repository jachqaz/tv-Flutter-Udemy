class SignInState {
  String username, password;
  bool fetching;

  SignInState({
    this.username = '',
    this.password = '',
    this.fetching = false,
  });

  SignInState copyWith({
    String? username,
    String? password,
    bool? fetching,
  }) {
    return SignInState(
      username: username ?? this.username,
      password: password ?? this.password,
      fetching: fetching ?? this.fetching,
    );
  }
}
