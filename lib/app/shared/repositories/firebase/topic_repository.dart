import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import '../../models/topic_model.dart';
import '../interfaces/topic_repository_interface.dart';

class TopicRepository extends Disposable implements ITopicRepository {
  final Firestore firestore;
  TopicRepository({@required this.firestore});

  @override
  Stream<List<TopicModel>> get() {
    return firestore.collection('topics').snapshots().map(
      (query) => query.documents.map((doc) => TopicModel.fromDocument(doc)).toList()
    );
  }

  @override
  Future<TopicModel> getById(String id) async {
    var docSnap = await firestore.collection('topics').document(id).get();
    return TopicModel.fromDocument(docSnap);
  }

  @override
  void dispose() { }

  @override
  Stream<List<TopicModel>> getByKeyword(String keywordId) {
    // TODO: implement getByKeyword
    throw UnimplementedError();
  }

}