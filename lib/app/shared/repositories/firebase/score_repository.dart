import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/score_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/score_repository_interface.dart';

class ScoreRepository extends Disposable implements IScoreRepository {
  final Firestore firestore;
  ScoreRepository({@required this.firestore});
  
  @override
  void dispose() { }

  @override
  Stream<List<ScoreModel>> get() {
    return firestore.collection('scores').snapshots().map(
      (query) => query.documents.map((doc) => ScoreModel.fromDocument(doc)).toList()
    );
  }

  @override
  Future<ScoreModel> getById(String id) async {
    var docSnap = await firestore.collection('scores').document(id).get();
    return ScoreModel.fromDocument(docSnap);
  }

}