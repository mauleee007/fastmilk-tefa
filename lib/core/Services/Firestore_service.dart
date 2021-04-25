import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fastmilk_admin/core/Models/Sales.dart';
import 'package:flutter/services.dart';

class FirestoreService {
  final CollectionReference _salescollectionReference = FirebaseFirestore.instance.collection('sales');

  // Future addSales(Sales sales) async {
  //   try{
  //     await  _salescollectionReference.add(sales.toMap());
  //   }catch(e) {
  //     if(e is PlatformException) {
  //       return e.message;
  //     }
  //     return e.toString();
  //   }
  // }
}