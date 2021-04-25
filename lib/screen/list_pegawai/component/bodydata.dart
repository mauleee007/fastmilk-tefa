import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fastmilk_admin/screen/profile_pegawai/profile_pegawai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyData extends StatefulWidget {
  BodyData({Key key}) : super(key: key);

  @override
  _BodyDataState createState() => _BodyDataState();
}

class _BodyDataState extends State<BodyData> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    CollectionReference sales = firebaseFirestore.collection('Sales');
    return StreamBuilder(
        stream: sales.orderBy('Nama').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.separated(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot doc = snapshot.data.docs[index];
                return ListTile(
                      leading: SvgPicture.asset('assets/images/Admin.svg'),
                      title: Text(
                        doc['Nama'],
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                        context, ProfilePegawai.routeName,
                        arguments: {
                          'Nama': doc.data()['Nama'],
                          'Email': doc.data()['Email'],
                          'Alamat': doc.data()['Alamat'],
                          'No_telp': doc.data()['No_telp']
                        });
                      },
                      trailing:
                          // InkWell(
                          //   onTap: () {
                          //     sales.doc(doc.id).delete();
                          //   },
                          Icon(Icons.arrow_right));
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.grey,
                  thickness: 1,
                );
              },
            );
          }
        });
  }
}
