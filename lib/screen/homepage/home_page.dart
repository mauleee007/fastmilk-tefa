import 'package:fastmilk_admin/screen/homepage/component/body_homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: BodyHome()),
    );
  }
}
