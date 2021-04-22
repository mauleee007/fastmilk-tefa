import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class BodyTambahDataPegawai extends StatefulWidget {
  BodyTambahDataPegawai({Key key}) : super(key: key);

  @override
  _BodyTambahDataPegawaiState createState() => _BodyTambahDataPegawaiState();
}

class _BodyTambahDataPegawaiState extends State<BodyTambahDataPegawai> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
          child: Column(children: [
            Expanded(
                flex: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/Admin.svg'),
                    ],
                  ),
                )),
            Expanded(
                flex: 0,
                child: Column(children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        EmailFormField(),
                        NamaFormField(),
                        AlamatFormField(),
                        PhoneFormField()
                      ],
                    ),
                  )
                ])),
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 1.5, horizontal: SizeConfig.blockSizeHorizontal * 3.5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFFE931D),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: MaterialButton(
                  onPressed: () {
                    if(!_formKey.currentState.validate()){
                      // ScaffoldMessenger.of(context).showSnackBar(Snackbar(content: Text('Processing Data')));
                    }
                  },
                  child: Text(
                    'ACCEPT',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color(0xFFFE931D),
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            )
          ])),
    );
  }
}

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: "Masukan nomor telepon",
            labelText: "Phone",
            labelStyle: TextStyle(color: Colors.black, fontSize: 20),
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Nomor telepon tidak boleh kosong";
          }
          return null;
        },
      ),
    );
  }
}

// Address column
class AlamatFormField extends StatelessWidget {
  const AlamatFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Masukan alamat lengkap",
            labelText: "Alamat",
            labelStyle: TextStyle(color: Colors.black, fontSize: 20),
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Alamat tidak boleh kosong";
          }
          return null;
        },
      ),
    );
  }
}

// Name column
class NamaFormField extends StatelessWidget {
  const NamaFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Masukan nama",
            labelText: "Nama",
            labelStyle: TextStyle(color: Colors.black, fontSize: 20),
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Nama tidak boleh kosong";
          }
          return null;
        },
      ),
    );
  }
}

// Email column
class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Masukan email",
            labelText: "Email",
            labelStyle: TextStyle(color: Colors.black, fontSize: 20),
            hintStyle: TextStyle(color: Colors.grey)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Email tidak boleh kosong";
          }
          return null;
        },
      ),
    );
  }
}
