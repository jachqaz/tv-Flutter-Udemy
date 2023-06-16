import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String username;

  User({required this.id, required this.username});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      username: json["username"],
    );
  }

  @override
  List<Object?> get props => [id, username];
}
