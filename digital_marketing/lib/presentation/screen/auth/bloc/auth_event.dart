part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthLoginPressedEvent extends AuthEvent{
  final String password;
  final String email;

  AuthLoginPressedEvent(this.password, this.email);
}