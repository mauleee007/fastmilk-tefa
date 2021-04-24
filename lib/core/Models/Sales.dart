import 'package:flutter/material.dart';

class Sales {
  // String id;
  String nama;
  String email;
  String alamat;
  String notelp;

  Sales({
    // @required this.id,
    this.nama,
    this.email,
    this.alamat,
    this.notelp,
  });

  Map<String, dynamic> toMap(){
    return {
      // 'id' : id,
      'nama' : nama,
      'email' : email,
      'alamat': alamat,
      'notelp' : notelp
    };
  }

  static Sales fromMap(Map<String, dynamic> map) {
    if(map == null) return null;

    return Sales(
      nama: map['nama'],
      email: map['email'],
      alamat: map['alamat'],
      notelp: map['notelp'],
      // id: map['id']
    );
  }
}