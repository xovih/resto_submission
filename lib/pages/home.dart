import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'package:resto_app_sora/common/size_config.dart';
import 'package:resto_app_sora/pages/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("Resto App"),
        centerTitle: false,
      ),
      body: Body(),
    );
  }
}
