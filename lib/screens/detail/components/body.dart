import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resto_app_sora/common/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key, this.data}) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(300),
            child: FadeInImage(
              image: NetworkImage(
                "https://restaurant-api.dicoding.dev/images/medium/" +
                    data.pictureId,
              ),
              height: getProportionateScreenHeight(175),
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: AssetImage("assets/images/no_image.png"),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            data.name,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(22),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/red_pin.png",
                height: 20,
              ),
              Text(
                data.city,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/star_icon.svg",
                height: 14,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                data.rating.toString(),
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10,
              right: 16,
              left: 16,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "Deskripsi :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5,
              right: 16,
              bottom: 24,
              left: 16,
            ),
            child: Text(data.description),
          ),
        ],
      ),
    );
  }
}
