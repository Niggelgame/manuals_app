import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manuals/api/auth_repository.dart';
import 'package:manuals/screens/screens.dart';

import 'api/bloc/authentification/authentication_bloc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(authenticationRepository: context.read<AuthRepository>())
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
