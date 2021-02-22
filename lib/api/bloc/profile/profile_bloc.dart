import 'package:api_wrapper/api_wrapper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manuals/api/profile_repository.dart';
import 'package:manuals/utils/utils.dart';

part 'profile_states.dart';
part 'profile_events.dart';


class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  final String userId;

  ProfileBloc(this._profileRepository, {this.userId}) : super(ProfileLoading());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if(event is ReloadProfile) {
      yield ProfileLoading();
      try {
        PartialUser user;
        if(userId == null) {
          user = await _profileRepository.getOwnUser();
        } else {
          user = await _profileRepository.getOtherUser(userId);
        }
        yield ProfileLoaded(user: user);
      } catch (e) {
        logger.e(e);
        yield ProfileLoadingFailed(error: e.toString());
      }
    }
  }
}