import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manuals/api/bloc/profile/profile_bloc.dart';
import 'package:manuals/api/profile_repository.dart';

class ProfileProvider extends StatelessWidget {
  final Widget child;
  final String userId;

  const ProfileProvider({
    Key key,
    @required this.child,
    this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) {
        return ProfileBloc(
          context.read<ProfileRepository>(),
          userId: userId,
        )..add(ReloadProfile());
      },
      child: child,
    );
  }
}
