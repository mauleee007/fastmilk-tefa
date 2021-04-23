import 'package:fastmilk_admin/constants.dart';
import 'package:fastmilk_admin/screen/data_pegawai/component/body_datapegawai.dart';
import 'package:flutter/material.dart';

class DataPegawai extends StatelessWidget {
  static String routeName = '/datapegawai';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('DATA PEGAWAI',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'ABeeZee',
            )),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: BodyDataPegawai(),
    );
  }
}
