import 'package:fastmilk_admin/screen/homepage/component/body_homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  static String routeName = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
    );
  }
}
