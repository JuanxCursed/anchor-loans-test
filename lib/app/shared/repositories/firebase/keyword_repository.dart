import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/keyword_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/keyword_repository_interface.dart';

class KeywordRepository extends Disposable implements IKeywordRepository {
  final Firestore firestore;
  KeywordRepository({@required this.firestore});
  
  @override
  void dispose() { }

  @override
  Stream<List<KeywordModel>> get() {
    return firestore.collection('keywords').snapshots().map(
      (query) => query.documents.map((doc) => KeywordModel.fromDocument(doc)).toList()
    );
  }

  @override
  Future<KeywordModel> getById(String id) async {
    var docSnap = await firestore.collection('keywords').document(id).get();
    return KeywordModel.fromDocument(docSnap);
  }

}