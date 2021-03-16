import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manuals/api/bloc/profile/profile_bloc.dart';
import 'package:manuals/screens/profile_screen/loading_profile_screen.dart';
import 'package:manuals/screens/profile_screen/profile_provider.dart';
import 'package:manuals/screens/profile_screen/profile_screen_content.dart';

class ProfileScreen extends StatelessWidget {
  final String userId;

  const ProfileScreen({Key key, this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileProvider(
      userId: userId,
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is ProfileLoadingFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoaded) {
              return ProfileScreenContent(user: state.user);
            }
            return LoadingProfileScreen();
          },
        ),
      ),
    );
  }
}
