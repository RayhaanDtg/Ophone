import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int user_ID;
  final String email;

  const User({
    required this.user_ID,
    required this.email,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [user_ID, email];
}
