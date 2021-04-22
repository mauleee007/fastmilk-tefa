import 'package:fastmilk_admin/screen/list_pegawai/component/body_datapegawai.dart';
import 'package:flutter/material.dart';

class DataPegawai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('DATA PEGAWAI',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'ABeeZee',
                )),
            centerTitle: true,
            backgroundColor: Color(0xFFFE931D),
          ),
          body: BodyDataPegawai()),
    );
  }
}
