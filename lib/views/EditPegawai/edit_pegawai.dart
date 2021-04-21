import 'package:fastmilk_admin/views/EditPegawai/components/body_editpegawai.dart';
import 'package:fastmilk_admin/views/ProfilePegawai/profile_pegawai.dart';
import 'package:flutter/material.dart';

void main() => runApp(EditPegawai());

class EditPegawai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            title: Text('EDIT PEGAWAI', style: TextStyle(fontSize: 17)),
            centerTitle: true,
            backgroundColor: Color(0xFFFE931D),
          ),
          body: BodyEditPegawai()),
    );
  }
}
