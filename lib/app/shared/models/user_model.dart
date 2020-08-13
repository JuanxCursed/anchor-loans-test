import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String name;

  UserModel({this.id, this.name});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel.fromJson(doc.data)..id = doc.documentID;
  }
}
