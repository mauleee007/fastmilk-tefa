import 'package:fastmilk_admin/routes.dart';
import 'package:fastmilk_admin/screen/homepage/home_page.dart';
import 'package:fastmilk_admin/theme.dart';
import 'package:flutter/material.dart';
import 'screen/splashscreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
