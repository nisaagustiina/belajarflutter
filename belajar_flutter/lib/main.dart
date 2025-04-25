import 'package:flutter/material.dart';
import 'package:belajar_flutter/nav-drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nav-Drawer'),
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Belajar Navigation Drawer Flutter',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
