import 'package:fastmilk_admin/screen/landing_screen/landing_screen.dart';
import 'package:fastmilk_admin/screen/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => LandingScreen(),
  SplashScreen.routeName: (context) => SplashScreen()
};
