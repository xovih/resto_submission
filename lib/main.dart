import 'package:flutter/material.dart';
import 'package:resto_app_sora/pages/home.dart';

import 'common/route.dart';
import 'common/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resto App',
      theme: theme(context),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
