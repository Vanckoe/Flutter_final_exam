part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthLoading extends AuthState {}

class AuthFailure extends AuthState{
  final String message;

  AuthFailure(this.message);
}