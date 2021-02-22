import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manuals/api/auth_repository.dart';
import 'package:manuals/api/profile_repository.dart';

class CustomRepositoryProvider extends StatelessWidget {
  final Widget child;

  const CustomRepositoryProvider({Key key, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) {
            return AuthRepository();
          },
        ),
        RepositoryProvider<ProfileRepository>(
          create: (context) {
            return CustomProfileRepository();
          },
        ),
      ],
      child: child,
    );

    return RepositoryProvider<AuthRepository>(
      create: (context) {
        return AuthRepository();
      },
      child: child,
    );
  }
}
