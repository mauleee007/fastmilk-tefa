import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyTambahPegawai extends StatefulWidget {
  BodyTambahPegawai({Key key}) : super(key: key);

  @override
  _BodyTambahPegawaiState createState() => _BodyTambahPegawaiState();
}

class _BodyTambahPegawaiState extends State<BodyTambahPegawai> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
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
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                    onPressed: null,
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
                  decoration: BoxDecoration(color: Color(0xFFFE931D), borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: MaterialButton(
                    onPressed: () {  },
                    child: Text('DELETE', style: TextStyle(color: Colors.white, fontSize: 16),),
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
