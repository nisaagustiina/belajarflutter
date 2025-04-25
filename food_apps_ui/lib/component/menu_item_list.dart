import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuItemList extends StatelessWidget {
  const MenuItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Dishes',
            style: TextStyle(fontSize: 22, color: Colors.black54),
          ),
          SizedBox(
            height: 16.0,
          ),
          MenuItem(
            imageItem:
                "https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
            rating: "3.0",
            judul: "Chicken Burger",
            subjudul:
                'Chicken, Yogurt, Red Chilli, Ginger Paste, Garlic Paste, ...',
          ),
          MenuItem(
            imageItem:
                "https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
            rating: "4.2",
            judul: "Meat",
            subjudul: "Meat with delicious ingridients",
          ),
          MenuItem(
            imageItem: "https://i.ibb.co/5FRwHtB/unnamed.jpg",
            rating: "4.3",
            judul: "Masakan Sunda",
            subjudul: "Nasi, tahu, lalap, ayam, ...",
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key? key,
      required this.imageItem,
      required this.rating,
      required this.judul,
      required this.subjudul})
      : super(key: key);

  final String imageItem;
  final String rating;
  final String judul;
  final String subjudul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(imageItem, fit: BoxFit.cover),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                        ),
                        Text(rating)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  judul,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                    width: 200,
                    child: Text(
                      subjudul,
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            )),
          )
        ],
      ),
    );
  }
}
