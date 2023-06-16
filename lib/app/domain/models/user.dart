import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String username;

  User({required this.id, required this.username});

  @override
  List<Object?> get props => [id, username];
}
