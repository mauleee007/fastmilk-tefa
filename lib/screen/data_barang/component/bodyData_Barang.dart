import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fastmilk_admin/screen/detail_barang/detail_barang.dart';
import 'package:fastmilk_admin/screen/edit_data/edit_barang/edit_barang.dart';
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
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    CollectionReference produk = firebaseFirestore.collection('Produk');
    return StreamBuilder(
        stream: produk.orderBy('Jenis').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot doc = snapshot.data.docs[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(DetailBarang.routeName, arguments: {
                      'Produk_id' : doc.data()['Produk_id'],
                      'Jenis' : doc.data()['Jenis'],
                      'Rasa' : doc.data()['Rasa'],
                      'Stok' : doc.data()['Stok'],
                      'Harga' : doc.data()['Harga'],
                      'Berat' : doc.data()['Berat'],
                      'Kategori' : doc.data()['Kategori'],
                    });
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          child : Image.asset('assets/images/yoghurt.jpg',
                          fit: BoxFit.fitWidth)
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(EditBarang.routeName);
                                  },
                                  child: Icon(Icons.edit, color: Colors.blueAccent)
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  produk.doc(doc.id).delete();
                                },
                                child: Icon(Icons.delete_outline, color: Colors.red)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(doc['Jenis'], style: TextStyle(fontSize: 18),),
                              ),
                              Icon(Icons.arrow_right)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
        });
  }
}
