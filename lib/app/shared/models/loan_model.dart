import 'package:cloud_firestore/cloud_firestore.dart';

class Loan {
  String id;
  String userId;
  int value;
  Timestamp startDate;
  Timestamp endDate;
  String status;

  Loan(
      {this.id,
      this.userId,
      this.value,
      this.startDate,
      this.endDate,
      this.status});

  Loan.fromJson(Map<String, dynamic> json) {
    this.userId = json['userId'];
    this.value = json['value'];
    this.startDate = json['startDate'];
    this.endDate = json['endDate'];
    this.status = json['status'];
  }

  factory Loan.fromDocument(DocumentSnapshot doc) {
    return Loan.fromJson(doc.data)..id = doc.documentID;
  }
}
