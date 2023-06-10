import 'package:equatable/equatable.dart';

class SignInState extends Equatable {
  String username, password;
  bool fetching;
  List<Permission>? permission;
  List<int> numbers;

  SignInState({
    this.username = '',
    this.password = '',
    this.fetching = false,
    this.permission = const [],
    this.numbers = const [],
  });

  SignInState copyWith(
      {String? username,
      String? password,
      bool? fetching,
      List<Permission>? permission,
      List<int>? numbers}) {
    return SignInState(
      username: username ?? this.username,
      password: password ?? this.password,
      fetching: fetching ?? this.fetching,
      permission: permission ?? this.permission,
      numbers: numbers ?? this.numbers,
    );
  }

  @override
  List<Object?> get props => [
        username,
        password,
        fetching,
        permission,
        numbers,
      ];

// bool operator ==(Object other) {
//   if (other is SignInState) {
//     return username == other.username && password == other.password;
//   }
//   return false;
// }
//
// int get hashCode {
//   return username.hashCode ^ password.hashCode;
// }
}

class Permission extends Equatable {
  final int id;
  final String name;

  Permission(this.id, this.name);

  Permission copyWith({int? id, String? name}) {
    return Permission(
      id ?? this.id,
      name ?? this.name,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name];
}
