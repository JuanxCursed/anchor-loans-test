import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/history_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/history_repository_interface.dart';

class HistoryRepositoy extends Disposable implements IHistoryRepository {
  final Firestore firestore;
  HistoryRepositoy({@required this.firestore});

  @override
  void dispose() { }

  @override
  Stream<List<HistoryModel>> get() {
    return firestore.collection('history').snapshots().map(
      (query) => query.documents.map((doc) => HistoryModel.fromDocument(doc)).toList()
    );
  }

  @override
  Future<HistoryModel> getById(String id) async {
    var docSnap = await firestore.collection('history').document(id).get();
    return HistoryModel.fromDocument(docSnap);
  }

  @override
  Stream<List<HistoryModel>> getByUserId(String userId) {
    return firestore.collection('history').where('userId', isEqualTo: userId).snapshots().map(
      (query) => query.documents.map((doc) => HistoryModel.fromDocument(doc)).toList()
    );
  }
}
