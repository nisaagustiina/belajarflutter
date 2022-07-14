import 'package:flutter/material.dart';
import 'package:food_apps_ui/component/app_bar.dart';
import 'package:food_apps_ui/component/food_list_view.dart';
import 'package:food_apps_ui/component/menu_item_list.dart';
import 'package:food_apps_ui/component/select_type_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Apps UI',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.green,
      //   child: Icon(Icons.menu_book),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppBar(),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 16.0,
            ),
            FoodListView(),
            SizedBox(
              height: 16.0,
            ),
            SelectTypeSection(),
            SizedBox(
              height: 16.0,
            ),
            MenuItemList()
          ],
        ),
      ),
    );
  }
}
