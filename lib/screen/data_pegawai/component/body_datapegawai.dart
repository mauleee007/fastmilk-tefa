import 'package:fastmilk_admin/screen/profile_pegawai/profile_pegawai.dart';
import 'package:fastmilk_admin/size_config.dart';
import 'package:flutter/material.dart';

class BodyDataPegawai extends StatefulWidget {
  @override
  _BodyDataPegawaiState createState() => _BodyDataPegawaiState();
}

class _BodyDataPegawaiState extends State<BodyDataPegawai> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
        child: Container(
          height: SizeConfig.blockSizeVertical * 70,
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ProfilePegawai.routeName);
                },
                child: ListTile(
                  leading: Image.asset('assets/images/profile.png'),
                  title: Text(
                    'Helmy Fauzi Ganteng',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'ABeeZee',
                    ),
                  ),
                  trailing: IconButton(icon: Icon(Icons.arrow_right)),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black38,
              );
            },
          ),
        ),
      ),
    );
  }
}
