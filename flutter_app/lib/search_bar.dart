import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BarSearch extends StatelessWidget {
  const BarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black54,
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none),
                hintText: 'Search')));
  }
}
