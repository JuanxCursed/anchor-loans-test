import 'package:cloud_firestore/cloud_firestore.dart';

class Loan {
  String id;
  String userId;
  int value;

  Loan({this.id, this.userId, this.value});

  Loan.fromJson(Map<String, dynamic> json) {
    this.userId = json['userId'];
    this.value = json['value'];
  }

  factory Loan.fromDocument(DocumentSnapshot doc) {
    return Loan.fromJson(doc.data)..id = doc.documentID;
  }
}
