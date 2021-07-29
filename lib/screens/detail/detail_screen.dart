import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_sora/common/constants.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.resto}) : super(key: key);

  static String routeName = "/detail_screen";
  final resto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(resto.name),
      body: Body(data: resto),
    );
  }
}
