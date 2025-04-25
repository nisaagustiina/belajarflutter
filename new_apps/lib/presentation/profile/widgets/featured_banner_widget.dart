import 'package:flutter/material.dart';

class FeaturedBannerWidget extends StatelessWidget {
  const FeaturedBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 140,
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.teal[800],
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Featured Article",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Natural mood regulation low or event absenr in people with depresion",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
