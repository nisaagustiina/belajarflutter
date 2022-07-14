import 'package:flutter/material.dart';

class DiscoverListItem extends StatelessWidget {
  const DiscoverListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 200,
      child: Column(
        children: [
          Expanded(
              flex: 7,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/seed/picsum/200/300"))),
              )),
          SizedBox(
            height: 8,
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nature",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Flexible(
                        child: Text("Let us plant more trees from this year",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
