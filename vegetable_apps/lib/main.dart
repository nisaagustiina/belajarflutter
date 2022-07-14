import 'package:flutter/material.dart';
import 'package:vegetable_apps/presentation/menu_list/menu_list_page.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuListPage(),
    );
  }
}
