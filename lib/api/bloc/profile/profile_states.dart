part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileLoaded extends ProfileState {
  final PartialUser user;

  const ProfileLoaded({
    @required this.user,
  });

  @override
  List<Object> get props => [user];
}

class ProfileLoading extends ProfileState {}

class ProfileLoadingFailed extends ProfileState {
  final String error;

  ProfileLoadingFailed({
    @required this.error,
  });
}
