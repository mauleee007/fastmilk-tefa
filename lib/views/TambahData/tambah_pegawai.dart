import 'package:fastmilk_admin/components/back_button.dart';
import 'package:flutter/material.dart';

import 'components/body_tambahpegawai.dart';

void main() => runApp(TambahPegawai());

class TambahPegawai extends StatelessWidget {
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
            leading: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.arrow_back)
            ),
            leadingWidth: 10,
            title: Center(
                child: Text(
              'PROFILE PEGAWAI',
              style: TextStyle(fontSize: 17),
            )),
            backgroundColor: Color(0xFFFE931D),
          ),
          body: BodyTambahPegawai()),
    );
  }
}
