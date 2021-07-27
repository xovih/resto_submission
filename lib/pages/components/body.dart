import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/size_config.dart';
import 'package:resto_app_sora/pages/components/card_list.dart';
import 'package:resto_app_sora/pages/components/category.dart';
import 'package:resto_app_sora/pages/components/content_title.dart';
import 'package:resto_app_sora/pages/components/search_box.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          ContentTitle(),
          Category(),
          SearchBox(
            onChanged: (value) {
              print(value);
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3, itemBuilder: (context, index) => CardList()),
          ),
        ],
      ),
    );
  }
}
