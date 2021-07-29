import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'package:resto_app_sora/common/size_config.dart';
import 'package:resto_app_sora/models/resto_model.dart';
import 'package:resto_app_sora/screens/detail/detail_screen.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key, required this.restaurant}) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routeName,
            arguments: restaurant);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
          vertical: getProportionateScreenHeight(8),
        ),
        height: getProportionateScreenHeight(250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
          boxShadow: [kDefaultShadow],
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                image: NetworkImage(
                  "https://restaurant-api.dicoding.dev/images/small/" +
                      restaurant.pictureId,
                ),
                height: getProportionateScreenHeight(175),
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: AssetImage("assets/images/no_image.png"),
              ),
            ),
            Positioned(
              top: getProportionateScreenHeight(145),
              left: 0,
              child: Container(
                alignment: Alignment.centerLeft,
                height: getProportionateScreenHeight(30),
                width: 75,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/icons/star_icon.svg",
                        height: getProportionateScreenHeight(14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        restaurant.rating.toString(),
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(14)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        restaurant.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        restaurant.city,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
