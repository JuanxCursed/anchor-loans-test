import 'package:cloud_firestore/cloud_firestore.dart';

import 'course_model.dart';
import 'order_model.dart';
import 'plan_model.dart';

class UserModel {
  String id;
  String name;
  PlanModel plan;
  List<CourseModel> courses;
  List<OrderModel> orders;

  UserModel({this.id, this.name, this.plan, this.courses, this.orders});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['planId'] != null) {
      plan = PlanModel(id: json['planId']);
    }
    if (json['courses'] != null) {
      courses = [];
      json['courses'].forEach((v) {
        courses.add(CourseModel(id: v['id']));
      });
    }
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders.add(OrderModel(id: v['id']));
      });
    }
  }

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel.fromJson(doc.data)..id = doc.documentID;
  }
}