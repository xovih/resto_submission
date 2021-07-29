import 'package:flutter/widgets.dart';
import 'package:resto_app_sora/screens/detail/detail_screen.dart';
import 'package:resto_app_sora/screens/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailPage.routeName: (context) => DetailPage(
        resto: ModalRoute.of(context)!.settings.arguments,
      ),
};
