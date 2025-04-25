import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DefaultTabBar extends StatelessWidget {
  const DefaultTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(tabs: [Tab(text: 'Following'), Tab(text: 'Inspiration')]),
    );
  }
}
