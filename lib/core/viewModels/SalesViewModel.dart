import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fastmilk_admin/core/services/Firestore_service.dart';
import 'package:fastmilk_admin/locator.dart';
import 'package:fastmilk_admin/core/viewModels/BaseModel.dart';
import 'package:flutter/material.dart';
import 'package:fastmilk_admin/core/Models/Sales.dart';

class CreateSalesViewModel extends BaseModel {
  final FirestoreService _firestoreService = locator<FirestoreService>();
  Sales sales = new Sales();
  get alamat => sales.alamat;

  get email => sales.email;

  get notelp => sales.notelp;

  Future addPost({@required String nama}) async {
    setBusy(true);
    var result = await _firestoreService.addSales(Sales(nama: nama, email: email, alamat: alamat, notelp: notelp));
    setBusy(false);
  }
}