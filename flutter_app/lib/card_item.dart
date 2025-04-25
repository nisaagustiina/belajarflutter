import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ListItem(
                imageItem:
                    "https://cdn-brilio-net.akamaized.net/webp/news/2020/02/27/179504/1181469-resep-masakan-sederhana-untuk-pemula.jpg",
                textItem: "blablabak",
              ),
              ListItem(
                imageItem:
                    "https://cdn-brilio-net.akamaized.net/webp/news/2020/02/27/179504/1181471-resep-masakan-sederhana-untuk-pemula.jpg",
                textItem: "blablabak",
              ),
              ListItem(
                imageItem:
                    "https://cdn-brilio-net.akamaized.net/webp/news/2020/02/27/179504/1181473-resep-masakan-sederhana-untuk-pemula.jpg",
                textItem: "blablabak",
              ),
            ],
          ),
        ));
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.imageItem, required this.textItem})
      : super(key: key);

  final String imageItem;
  final String textItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          SizedBox(
              width: 150,
              height: 150,
              child: Image.network(
                imageItem,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              )),
          Column(
            children: [Text(textItem)],
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
