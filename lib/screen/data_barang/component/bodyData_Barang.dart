import 'package:fastmilk_admin/screen/detail_barang/detail_barang.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BodyDataBarang extends StatefulWidget {
  @override
  _BodyDataBarangState createState() => _BodyDataBarangState();
}

class _BodyDataBarangState extends State<BodyDataBarang> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
        child: Container(
          height: SizeConfig.blockSizeVertical * 70,
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DetailBarang.routeName);
                },
                child: ListTile(
                  leading: Image.asset('assets/images/barang.png'),
                  title: Text(
                    'Susu Pasteurize Milk',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  trailing: IconButton(icon: Icon(Icons.arrow_right), onPressed: () {  },),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black38,
              );
            },
          ),
        ),
      ),
    );
  }
}
