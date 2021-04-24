import 'package:fastmilk_admin/screen/detail_barang/component/body_detailbarang.dart';
import 'package:flutter/material.dart';

class DetailBarang extends StatelessWidget {
  static String routeName = '/detailbarang';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetailBarang(),
    );
  }
}
