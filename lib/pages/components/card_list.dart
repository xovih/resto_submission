import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'package:resto_app_sora/common/size_config.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(16),
        vertical: getProportionateScreenHeight(8),
      ),
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryColor,
        boxShadow: [kDefaultShadow],
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://ess.pindad.com/assets/images/foto_pegawai_bumn/05561.jpg",
              height: 175,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 135,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Text("Bintang"),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.black,
              width: 300,
              height: 75,
            ),
          )
        ],
      ),
    );
  }
}
