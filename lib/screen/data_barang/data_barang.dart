import 'package:flutter/material.dart';

import '../../constants.dart';
import 'component/bodyData_Barang.dart';

class DataBarang extends StatelessWidget {
  static String routeName = '/databarang';
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
        title: Text('DATA BARANG',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            )),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: BodyDataBarang(),
    );
  }
}
