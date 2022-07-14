import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({Key? key}) : super(key: key);

  Dashboard(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((title.isEmpty) ? "Button" : title),
      ),
      body: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        child: Text("Back to previous page"),
        onPressed: () {},
      ),
    );
  }
}
