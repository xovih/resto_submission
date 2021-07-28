import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'package:resto_app_sora/common/size_config.dart';
import 'dart:io' show Platform;

import 'package:resto_app_sora/providers/resto_list_provider.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RestolistProvider>(
        builder: (context, RestolistProvider data, widget) {
      return Container(
        margin: EdgeInsets.all(
          getProportionateScreenWidth(16),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
          vertical: getProportionateScreenHeight(4),
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          cursorColor: kSecondaryColor,
          onChanged: (val) {
            data.kunciPencarian(val);
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Platform.isAndroid
                ? Icon(
                    Icons.search,
                    color: kSecondaryColor,
                  )
                : Icon(
                    CupertinoIcons.search,
                    color: kSecondaryColor,
                  ),
            hintText: "Search Resto",
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
