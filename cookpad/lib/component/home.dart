import 'package:cookpad/component/app_bar.dart';
import 'package:cookpad/component/bottom_navbar.dart';
import 'package:cookpad/component/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text('cooklist'),
        ),
        body: Container(
            child: ListView(children: [
          SizedBox(
            height: 15,
          ),
          TopBar(),
          SizedBox(
            height: 15,
          ),
          MenuListItem()
        ])),
        bottomNavigationBar: BottomNavBar());
  }
}
