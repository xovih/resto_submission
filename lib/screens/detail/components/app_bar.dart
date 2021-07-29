import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'package:resto_app_sora/common/size_config.dart';
import 'dart:io' show Platform;

AppBar buildAppBar(String title) {
  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Platform.isAndroid
              ? Icon(Icons.arrow_back)
              : Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        );
      },
    ),
    //
    centerTitle: true,
    title: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Platform.isAndroid
            ? Icon(Icons.favorite_border)
            : Icon(CupertinoIcons.heart),
      )
    ],
    backgroundColor: kPrimaryColor,
    elevation: 0,
  );
}
