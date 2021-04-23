import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class BodyDetailBarang extends StatefulWidget {
  BodyDetailBarang({Key key}) : super(key: key);

  @override
  _BodyProfilePegawaiState createState() => _BodyProfilePegawaiState();
}

class _BodyProfilePegawaiState extends State<BodyDetailBarang> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical * 2),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/Admin.svg'),
                    Text(
                      'Name Example',
                      style: TextStyle(color: Color(0xFFFE931D), fontSize: 20),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 0,
            child: Column(
              children: [
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child:
                              Text('I Produk', style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('1',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('Nama Produk',
                              style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('Pasteurize Milk',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('Berat Produk',
                              style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('55 mL',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('Rasa Produk',
                              style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('Strawberry',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('Stok Produk',
                              style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('100 Pcs',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child:
                              Text('Kategori', style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('Pasteurize Milk',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 15,
                  thickness: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(),
                      // );
                    },
                    child: Text('EDIT',
                        style:
                            TextStyle(color: Color(0xFFFE931D), fontSize: 16)),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color(0xFFFE931D),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFE931D),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'DELETE',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color(0xFFFE931D),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
