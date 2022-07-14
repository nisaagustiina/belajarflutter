import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: SectionType(
                height: 92.0,
                width: 120.0,
                color: Color.fromRGBO(216, 235, 222, 1),
                icon: FontAwesomeIcons.solidStarHalfStroke,
                colorIcon: Color.fromRGBO(76, 175, 106, 1),
                text: 'Special Menu',
                colorText: Color.fromRGBO(76, 175, 106, 1),
              ),
            ),
            SectionType(
                height: 92.0,
                width: 120.0,
                color: Color.fromRGBO(242, 220, 223, 1),
                icon: FontAwesomeIcons.solidClock,
                colorIcon: Color.fromRGBO(243, 97, 105, 1),
                text: 'Book a Table',
                colorText: Color.fromRGBO(243, 97, 105, 1)),
            SectionType(
                height: 92.0,
                width: 120.0,
                color: Color.fromRGBO(193, 219, 238, 1),
                icon: FontAwesomeIcons.solidFaceSmile,
                colorIcon: Color.fromRGBO(57, 139, 207, 1),
                text: 'Caterings',
                colorText: Color.fromRGBO(57, 139, 207, 1))
          ]),
        ));
  }
}

class SectionType extends StatelessWidget {
  const SectionType(
      {Key? key,
      required this.icon,
      required this.colorIcon,
      required this.colorText,
      required this.text,
      required this.height,
      required this.width,
      required this.color})
      : super(key: key);

  final IconData icon;
  final String text;
  final Color colorIcon;
  final Color colorText;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: colorIcon),
          SizedBox(
            height: 4.0,
          ),
          Text(
            text,
            style: TextStyle(color: colorText, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
