import 'package:flutter/material.dart';

import 'components/body_profilepegawai.dart';

class ProfilePegawai extends StatelessWidget {
  static String routeName = "/profilePegawai";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            'PROFILE PEGAWAI',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFFE931D),
        ),
        body: BodyProfilePegawai());
  }
}
