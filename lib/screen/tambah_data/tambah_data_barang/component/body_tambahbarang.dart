import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class BodyTambahBarang extends StatefulWidget {
  BodyTambahBarang({Key key}) : super(key: key);
  @override
  _BodyTambahBarangState createState() => _BodyTambahBarangState();
}

class _BodyTambahBarangState extends State<BodyTambahBarang> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Masukan Nama Produk",
                              labelText: "Nama Produk",
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              hintStyle: TextStyle(color: Colors.grey)))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Beri keterangan berat produk",
                            labelText: "Berat Produk",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 18),
                            hintStyle: TextStyle(color: Colors.grey))),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Beri keterangan rasa produk",
                              labelText: "Rasa Produk",
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              hintStyle: TextStyle(color: Colors.grey)))),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Masukan jumlah stok produk",
                              labelText: "Stok Produk",
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              hintStyle: TextStyle(color: Colors.grey)))),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Beri keterangan kategori produk",
                              labelText: "Kategori",
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              hintStyle: TextStyle(color: Colors.grey)))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 2),
                          child: Text(
                            "Upload Gambar Produk",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 2),
                          child: Container(
                            width: SizeConfig.blockSizeHorizontal * 40,
                            height: SizeConfig.blockSizeVertical * 7,
                            child: MaterialButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => EditPegawai()),
                                // );
                              },
                              child: Text('Upload Image',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 16)),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: kPrimaryColor,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockSizeVertical * 5,
                  0, SizeConfig.blockSizeVertical * 5),
              child: Container(
                color: kPrimaryColor,
                width: SizeConfig.blockSizeHorizontal * 90,
                height: SizeConfig.blockSizeVertical * 6,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'ACCEPT',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
