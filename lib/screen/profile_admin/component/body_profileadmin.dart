import 'package:fastmilk_admin/constants.dart';
import 'package:fastmilk_admin/screen/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';

class BodyProfileAdmin extends StatefulWidget {
  BodyProfileAdmin({Key key}) : super(key: key);

  @override
  _BodyProfileAdminState createState() => _BodyProfileAdminState();
}

class _BodyProfileAdminState extends State<BodyProfileAdmin> {
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
                child: Image.asset('assets/images/admin_profile.png'),
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
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
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
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
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
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 1.5,
                      horizontal: SizeConfig.blockSizeHorizontal * 3.5),
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
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2.3,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('LOGOUT',
                    style: TextStyle(color: kPrimaryColor, fontSize: 16)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: kPrimaryColor,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
