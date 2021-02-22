import 'dart:async';

import 'package:api_wrapper/api_wrapper.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:manuals/api/auth_repository.dart';

part 'authentication_events.dart';
part 'authentication_state.dart';


class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    @required AuthRepository authenticationRepository,
  })  : assert(authenticationRepository != null),
        _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.unknown()) {
    _userSubscription = _authenticationRepository.user.listen(
          (user) => add(AuthenticationUserChanged(user)),
    );
  }

  final AuthRepository _authenticationRepository;
  StreamSubscription<User> _userSubscription;

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event,
      ) async* {
    if (event is AuthenticationUserChanged) {
      yield await _mapAuthenticationUserChangedToState(event);
    } else if (event is AuthenticationRequestLogin) {
      try {
        await _authenticationRepository.login();
      } catch (e) {
        yield AuthenticationState.unknown();
      }
    }
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  Future<AuthenticationState> _mapAuthenticationUserChangedToState(
      AuthenticationUserChanged event,
      ) async {
    if(event.user != null) {
      ApiWrapper.instance.updateToken(await event.user.getIdToken());
    }
    return event.user != null
        ? AuthenticationState.authenticated(event.user)
        : const AuthenticationState.unauthenticated();
  }
}