import 'package:flutter/material.dart';

class TitledFeedModule extends StatelessWidget {
  final String title;
  final Widget child;

  const TitledFeedModule({Key key, @required this.title, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
          child,
        ],
      ),
    );
  }
}
