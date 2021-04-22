import 'package:flutter/material.dart';

import 'component/body_tambahpegawai.dart';

void main() => runApp(TambahPegawai());

class TambahPegawai extends StatelessWidget {
  static String routeName = "/tambahPegawai";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              'TAMBAH DATA PEGAWAI',
              style: TextStyle(fontSize: 17),
            ),
            centerTitle: true,
            backgroundColor: Color(0xFFFE931D),
          ),
          body: BodyTambahDataPegawai(),
      )
    );
  }
}
