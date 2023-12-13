import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digital_marketing/domain/entity/profile.dart';
import 'package:digital_marketing/domain/request_model/empty_request_model.dart';
import 'package:digital_marketing/domain/use_case/get_profile_use_case.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._getProfileUseCase) : super(ProfileInitial()) {
    on<ProfileLoadEvent>(_loadProfile);

    add(ProfileLoadEvent());
  }

  final GetProfileUseCase _getProfileUseCase;

  Future<void> _loadProfile(ProfileLoadEvent event, Emitter emit) async {
    emit(ProfileLoading());
    final profile = await _getProfileUseCase(EmptyRequestModel());
    emit(
      ProfileLoaded(
        profile,
        {
          'Phone number': profile.phoneNumber,
          'Name': profile.name,
          'Email': profile.email,
          'Password': profile.password,
          'Age': profile.age.toString(),
        }
      ),
    );
  }
}
