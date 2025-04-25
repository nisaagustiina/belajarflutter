import 'package:course_online/presentation/dashboard/dashboard.dart';
import 'package:course_online/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'Online Course',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(Icons.account_circle),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text("Go To Dashboard"),
                onPressed: () {
                  String title = "Ini dari Home Page";
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Dashboard(title)));
                },
              ),
            ),
            Container(
                color: Colors.grey[200],
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconWithLabel(
                      icon: Icons.call,
                      text: "Call",
                      colorIcon: Colors.blue,
                      colorText: Colors.blue,
                    ),
                    IconWithLabel(
                        icon: Icons.navigation,
                        text: "Route",
                        colorIcon: Colors.red,
                        colorText: Colors.red),
                    IconWithLabel(
                        icon: Icons.share,
                        text: "Share",
                        colorIcon: Colors.green,
                        colorText: Colors.green),
                  ],
                )),
          ],
        )); //Scafold
  }
}
