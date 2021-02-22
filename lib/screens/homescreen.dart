import 'dart:io';

import 'package:flutter/material.dart';
import 'package:manuals/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

const kPagerAnimationDuration = Duration(milliseconds: 300);

class _HomeScreenState extends State<HomeScreen> {
  int pagerIndex = 0;

  PageController controller;

  @override
  initState() {
    super.initState();

    controller = PageController(initialPage: pagerIndex);
  }

  onTapNavigation(int index, {bool withAnimation = true} ) {
    setState(() {
      pagerIndex = index;
    });
    updatePageView();
  }

  updatePageView() {
    controller.animateToPage(pagerIndex, duration: kPagerAnimationDuration, curve: Curves.easeInCirc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Feed(),
          ProfileScreen(),
        ],
        controller: controller,
        physics: Platform.isIOS ? NeverScrollableScrollPhysics() : PageScrollPhysics(),
        onPageChanged: (i) => onTapNavigation(i, withAnimation: false),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_rounded), label: 'Profile'),
        ],
        onTap: onTapNavigation,
        currentIndex: pagerIndex,
      ),
    );
  }
}
