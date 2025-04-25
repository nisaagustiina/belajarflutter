import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation_bar.dart';
import 'package:flutter_app/card_item.dart';
import 'package:flutter_app/default_tab_bar.dart';
import 'package:flutter_app/item2.dart';
import 'package:flutter_app/search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble),
            color: Colors.grey,
          ),
        ],
        // flexibleSpace: DefaultTabBar(),
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(
            height: 13,
          ),
          BarSearch(),
          SizedBox(
            height: 5,
          ),
          DefaultTabBar(),
          SizedBox(
            height: 7,
          ),
          CardItem(),
          SizedBox(
            height: 7,
          ),
          Item()
        ],
      )),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
