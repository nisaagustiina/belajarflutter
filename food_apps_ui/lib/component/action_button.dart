import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      // child: ClipPolygon(
      //     child: Container(
      //       color: Colors.yellow,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(FontAwesomeIcons.book),
      //           SizedBox(height: 4.0),
      //           Text('Menu',
      //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
      //         ],
      //       ),
      //     ),
      //     sides: 6),
    );
  }
}
