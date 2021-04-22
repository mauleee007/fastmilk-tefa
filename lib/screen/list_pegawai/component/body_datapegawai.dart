import 'package:flutter/material.dart';

class BodyDataPegawai extends StatefulWidget {
  @override
  _BodyDataPegawaiState createState() => _BodyDataPegawaiState();
}

class _BodyDataPegawaiState extends State<BodyDataPegawai> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 340,
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset('assets/images/profile.png'),
                    title: Text(
                      'Helmy Fauzi Ganteng',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'ABeeZee',
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.arrow_right), onPressed: () {}),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.black38,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 10, 0),
              child: Container(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                    backgroundColor: Colors.orange,
                    onPressed: () {},
                    child: Icon(Icons.add)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
