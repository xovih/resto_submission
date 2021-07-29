import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/size_config.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(16),
      ),
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(12),
        bottom: getProportionateScreenHeight(8),
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        "Main\nCategories",
        style: TextStyle(
          height: 1.1,
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenWidth(28),
        ),
      ),
    );
  }
}
