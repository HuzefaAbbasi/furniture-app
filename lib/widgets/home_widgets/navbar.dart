import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({
    super.key,
  });

  final iconsList = [
    Icons.home_filled,
    Icons.favorite,
    CupertinoIcons.person_fill,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
        activeColor: Colors.orangeAccent,
        gapLocation: GapLocation.none,
        iconSize: 28,
        inactiveColor: Colors.black54,
        height: 65,
        icons: iconsList,
        activeIndex: 0,
        onTap: (index) {});
  }
}
