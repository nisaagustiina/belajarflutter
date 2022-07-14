import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          ItemCard(
            image:
                "https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
            judul: '25% OFF',
            subjudul: 'ON FIRST 3 ORDERS',
          ),
          ItemCard(
            image:
                "https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
            judul: '15% OFF',
            subjudul: 'ON THIS DAY',
          ),
          ItemCard(
            image: "https://i.ibb.co/qk6PzDy/London-broil.jpg",
            judul: '5% OFF',
            subjudul: 'ON THIS WEEKEND',
          )
        ]),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.image,
      required this.judul,
      required this.subjudul})
      : super(key: key);

  final String image;
  final String judul;
  final String subjudul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 300.0,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              height: 160.0,
              width: 300.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(judul,
                      style: TextStyle(
                          color: Color.fromRGBO(246, 194, 77, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1)),
                  Text(
                    subjudul,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
