import 'package:api_wrapper/api_wrapper.dart';
import 'package:flutter/material.dart';

class ProfileScreenContent extends StatefulWidget {
  final PartialUser user;

  const ProfileScreenContent({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  _ProfileScreenContentState createState() => _ProfileScreenContentState();
}

class _ProfileScreenContentState extends State<ProfileScreenContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.user.firebaseUserId),
          Text(widget.user.ownManuals.toString()),
        ],
      ),
    );
  }
}
