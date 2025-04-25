import 'dart:js_util';

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.folder,
              text: 'My Files',
              onTap: (() => print('Tap Shared Menu'))),
          _drawerItem(
              icon: Icons.group,
              text: 'Shared with me',
              onTap: (() => print('Tap Shared Menu'))),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: (() => print('Tap Recent Menu'))),
          _drawerItem(
              icon: Icons.delete,
              text: 'Trash',
              onTap: (() => print('Tap Trash Menu'))),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              'Labels',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Family',
              onTap: (() => print('Tap Family Menu')))
        ],
      ),
    );
  }
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: [
        Icon(icon),
        Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    ),
    onTap: onTap,
  );
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('assets/images/user.png'),
          fit: BoxFit.cover,
        ),
      ),
      otherAccountsPictures: [
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ],
      accountName: Text('Nisa Agustina'),
      accountEmail: Text('nisaagustiina@gmail.com'));
}
