import 'package:flutter/material.dart';

class Sales {
  final String salesId;
  final String nama;
  final String email;
  final String alamat;
  final String notelp;

  Sales({
    this.salesId,
    this.nama,
    this.email,
    this.alamat,
    this.notelp,
  });

  // Map<String, dynamic> toMap(){
  //   return {
  //     // 'id' : id,
  //     'nama' : nama,
  //     'email' : email,
  //     'alamat': alamat,
  //     'notelp' : notelp
  //   };
  // }

  // static Sales fromMap(Map<String, dynamic> map) {
  //   if(map == null) return null;

  //   return Sales(
  //     nama: map['nama'],
  //     email: map['email'],
  //     alamat: map['alamat'],
  //     notelp: map['notelp'],
  //     // id: map['id']
  //   );
  // }
}