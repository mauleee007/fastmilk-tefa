import 'package:fastmilk_admin/screen/list_pegawai/component/bodydata.dart';
import 'package:fastmilk_admin/screen/tambah_data/tambah_datapegawai.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DataPegawai());
}

class DataPegawai extends StatelessWidget {
  static String routeName = '/dataPegawai';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => 
        Scaffold(
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFFE931D)),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => TambahPegawai(),)); },
                child: Icon(Icons.add, color: Color(0xFFFE931D)),
            ),
            appBar: AppBar(
              title: Text('DATA PEGAWAI',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'ABeeZee',
                  )),
              centerTitle: true,
              backgroundColor: Color(0xFFFE931D),
            ),
            body: BodyData()),
      ),
    );
  }
}
