import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digital_marketing/domain/request_model/auth_request_model.dart';
import 'package:digital_marketing/domain/use_case/auth_use_case.dart';
import 'package:digital_marketing/presentation/base/base_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(this._authUseCase) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
  }

  final AuthUseCase _authUseCase;

  @override
  void init() {}

  @override
  void initUseCases() {
    on<AuthLoginPressedEvent>(onAuthLoginPressedEvent);
  }

  Future<void> onAuthLoginPressedEvent(AuthLoginPressedEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await _authUseCase(AuthRequestModel(email: event.email, password: event.password));
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
