import 'package:cloud_firestore/cloud_firestore.dart';

enum UserType { Borrower, Investor }

class UserModel {
  String id;
  String name;
  String address;
  UserType userType;

  UserModel({this.id, this.name, this.address, this.userType});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    userType = json['userType'] == 0 ? UserType.Borrower : UserType.Investor;
  }

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel.fromJson(doc.data)..id = doc.documentID;
  }
}
