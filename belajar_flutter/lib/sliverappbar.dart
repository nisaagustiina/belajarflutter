import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DynamicAppBar(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('SliverAppBar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/lany.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: new EdgeInsets.all(10.0),
                sliver: new SliverList(
                    delegate: new SliverChildListDelegate([
                  TabBar(
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        new Tab(
                            icon: new Icon(Icons.audiotrack), text: 'Songs'),
                        new Tab(
                            icon: new Icon(Icons.collections), text: 'Gallery')
                      ])
                ])),
              )
            ];
          },
          body: Center(
            child: Text('LANY'),
          )),
    ));
  }
}

class DynamicAppBar extends StatelessWidget  {
  const DynamicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MysliverAppBar(expandedHeight: 200),
              pinned: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((_, index) => ListTile(
                      title: Text('Song $index'),
                    )))
          ],
        ),
      ),
    );
  }
}

class MysliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MysliverAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Image(
          image: AssetImage('assets/images/lany.jpg'),
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              'LANY',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
        ),
        Positioned(
            top: expandedHeight / 2 - shrinkOffset,
            left: MediaQuery.of(context).size.width / 4,
            child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/image/lany1.jpg'),
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ))
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
