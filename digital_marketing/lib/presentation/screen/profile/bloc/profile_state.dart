part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final ProfileInfo profileInfo;
  final Map<String, dynamic> mappedProfileInfo;

  ProfileLoaded(this.profileInfo, this.mappedProfileInfo);
}