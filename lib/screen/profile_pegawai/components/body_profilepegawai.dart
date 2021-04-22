import 'package:fastmilk_admin/screen/edit_pegawai/edit_pegawai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class BodyProfilePegawai extends StatefulWidget {
  BodyProfilePegawai({Key key}) : super(key: key);

  @override
  _BodyProfilePegawaiState createState() => _BodyProfilePegawaiState();
}

class _BodyProfilePegawaiState extends State<BodyProfilePegawai> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 2),
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
                  padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 1.5, horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('Email', style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('example@mail.id',
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
                  padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 1.5, horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('Nama', style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('example',
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
                  padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 1.5, horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child:
                              Text('Alamat', style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('example',
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
                 padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 1.5, horizontal: SizeConfig.blockSizeHorizontal * 3.5),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text('No.Telepon',
                              style: TextStyle(fontSize: 18))),
                      Container(
                          width: 15,
                          child: Text(':', style: TextStyle(fontSize: 18))),
                      Flexible(
                          child: Text('example-xxx',
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditPegawai()),
                      );
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
