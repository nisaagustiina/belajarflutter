import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              fillColumn(
                icon: Icons.home,
                text: 'Home',
              ),
              fillColumn(
                icon: Icons.search,
                text: 'Search',
              ),
              fillColumn(
                icon: Icons.menu_book,
                text: 'Menu',
              ),
              fillColumn(
                icon: Icons.favorite,
                text: 'Wishlist',
              ),
              fillColumn(
                icon: Icons.shopping_cart,
                text: 'Cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class fillColumn extends StatelessWidget {
  const fillColumn({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(text, style: TextStyle(fontSize: 12))],
    );
  }
}
