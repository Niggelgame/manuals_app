import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

const kFeedAnimationDuration = Duration(milliseconds: 400);

class _FeedState extends State<Feed> with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: kFeedAnimationDuration);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: <Color>[Theme.of(context).backgroundColor, Theme.of(context).accentColor])
                  ),
                  child: SafeArea(
                    top: true,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Welcome!",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


class _MostLiked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
