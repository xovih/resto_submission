import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'package:resto_app_sora/common/size_config.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  List categories = [
    'All',
    'Sunda',
    'Jawa',
    'Bali',
    'Sop',
    'Modern',
    'Italia',
    'Spanyol'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      height: getProportionateScreenHeight(30),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: getProportionateScreenWidth(16),
              right: index == categories.length - 1
                  ? getProportionateScreenWidth(16)
                  : 0,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16),
            ),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? kSecondaryColor
                  : Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                  color: index == selectedIndex ? Colors.white : kTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
