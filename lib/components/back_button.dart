import 'package:flutter/material.dart';

class BackButtonRounded extends StatelessWidget {
  final Function onPress;
  final String text;

  const BackButtonRounded({Key key, this.onPress, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 32,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Stack(
              children: [ 
                MaterialButton(
                  onPressed: onPress,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios, color: Color(0xFFFE931D)),
                      Text(text,
                          style: TextStyle(color: Color(0xFFFE931D), fontSize: 10))
                    ],
                  )),
              ]
            )
    );
  }
}
