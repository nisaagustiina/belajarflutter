import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_apps/presentation/profile/widgets/card_profile_widget.dart';
import 'package:new_apps/presentation/profile/widgets/discover_list_item_widget.dart';
import 'package:new_apps/presentation/profile/widgets/featured_banner_widget.dart';
import 'package:new_apps/presentation/profile/widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardProfileWidget(),
              SizedBox(
                height: 15,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: natureDiscoveryData()),
              SizedBox(
                height: 3,
              ),
              Container(child: FeaturedBannerWidget())
            ],
          ),
        ),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitle(
            title: "Notable Works",
            subtitle: "Based on the popularity of articles",
          ),
          Container(
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DiscoverListItem();
                }),
          )
        ],
      ),
    );
  }
}
