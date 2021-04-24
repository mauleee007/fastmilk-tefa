import 'package:fastmilk_admin/screen/list_pegawai/component/bodydata.dart';
import 'package:fastmilk_admin/screen/tambah_data/tambah_datapegawai.dart';
import 'package:flutter/material.dart';

class DataPegawai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, TambahPegawai.routeName);
            },
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFFFE931D)),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Icon(Icons.add, color: Color(0xFFFE931D)),
          ),
          appBar: AppBar(
            title: Text('DATA PEGAWAI',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'ABeeZee',
                )),
            centerTitle: true,
            backgroundColor: Color(0xFFFE931D),
          ),
          body: BodyData()),
    );
  }
}
