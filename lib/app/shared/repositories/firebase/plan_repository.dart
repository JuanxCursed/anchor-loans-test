import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../interfaces/plan_repository_interface.dart';
import '../../models/plan_model.dart';

class PlanRepository extends Disposable implements IPlanRepository {
  final Firestore firestore;
  PlanRepository({@required this.firestore});
  
  @override
  Future<PlanModel> getById(String id) async {
    var docSnap = await firestore.collection('plans').document(id).get();
    return PlanModel.fromDocument(docSnap);
  }

  @override
  Stream<List<PlanModel>> get() {
    return firestore.collection('plans').snapshots().map(
      (query) => query.documents.map((doc) => PlanModel.fromDocument(doc)).toList()
    );
  }

  @override
  void dispose() { }

}
