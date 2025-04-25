import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.grey),
      BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Colors.grey),
      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.squarePlus),
          label: 'Search',
          backgroundColor: Colors.grey),
      BottomNavigationBarItem(
          icon: Icon(Icons.chat), label: 'Chat', backgroundColor: Colors.grey),
      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.circleUser),
          label: 'Profile',
          backgroundColor: Colors.grey)
    ]);
  }
}
