import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manuals/auth/auth_repository.dart';
import 'package:manuals/auth/bloc/authentication_bloc.dart';
import 'package:manuals/screens/screens.dart';

class App extends StatelessWidget {
  final AuthRepository authRepository = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(authenticationRepository: authRepository)
          ..add(AuthenticationRequestLogin());
      },
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.unknown) {
            return CircularProgressIndicator();
          } else if (state.status == AuthenticationStatus.unauthenticated) {
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationRequestLogin());
            return CircularProgressIndicator();
          } else {
            return HomeScreen();
          }
        },
      ),
    );
  }
}
