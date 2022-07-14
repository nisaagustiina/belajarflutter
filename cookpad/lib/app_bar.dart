import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
          prefixIconColor: Colors.white,
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          hintText: 'Search',
        ),
      ),
    );
  }
}
