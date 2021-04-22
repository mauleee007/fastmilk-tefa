import 'package:fastmilk_admin/screen/edit_pegawai/edit_pegawai.dart';
import 'package:fastmilk_admin/screen/landing_screen/landing_screen.dart';
import 'package:fastmilk_admin/screen/login/login.dart';
import 'package:fastmilk_admin/screen/profile_pegawai/profile_pegawai.dart';
import 'package:fastmilk_admin/screen/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => LandingScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  Login.routeName: (context) => Login(),
  ProfilePegawai.routeName: (context) => ProfilePegawai(),
  EditPegawai.routeName: (context) => EditPegawai()
};
