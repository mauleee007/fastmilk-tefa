import 'package:fastmilk_admin/components/back_button.dart';
import 'package:flutter/material.dart';

import 'components/body_profilepegawai.dart';

void main() => runApp(ProfilePegawai());

class ProfilePegawai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // leading: BackButtonRounded(
            //   onPress: () {},
            //   text: 'Kembali',
            // ),
            leading: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            title: Center(
                child: Text(
              'PROFILE PEGAWAI',
              style: TextStyle(fontSize: 17),
            )),
            backgroundColor: Color(0xFFFE931D),
          ),
          body: BodyProfilePegawai()),
    );
  }
}
