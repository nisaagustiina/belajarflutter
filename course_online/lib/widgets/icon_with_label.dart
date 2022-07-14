import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.text,
    required this.colorIcon,
    required this.colorText,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final MaterialColor colorIcon;
  final MaterialColor colorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: colorIcon),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(color: colorText),
        )
      ],
    );
  }
}
