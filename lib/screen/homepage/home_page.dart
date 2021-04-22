import 'package:fastmilk_admin/screen/homepage/component/body_homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: BodyHome()),
    );
  }
}
