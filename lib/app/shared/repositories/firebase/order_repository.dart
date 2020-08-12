import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../interfaces/order_repository_interface.dart';
import '../../models/order_model.dart';

class OrderRepository extends Disposable implements IOrderRepository {
  final Firestore firestore;
  OrderRepository({@required this.firestore});
  
  @override
  Future<OrderModel> create(OrderModel order) async {
    var newDocRef = await firestore.collection('orders').add(order.toJson());
    if (newDocRef != null) {
      var docSnap = await newDocRef.get();
      return OrderModel.fromDocument(docSnap);
    }

    return null;
  }
  
  @override
  Future<OrderModel> getById(String id) async {
    var docSnap = await firestore.collection('orders').document(id).get();
    return OrderModel.fromDocument(docSnap);
  }

  @override
  Stream<List<OrderModel>> get() {
    return firestore.collection('orders').snapshots().map(
      (query) => query.documents.map((doc) => OrderModel.fromDocument(doc)).toList()
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}