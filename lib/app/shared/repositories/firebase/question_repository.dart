import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/question_model.dart';
import '../interfaces/question_repository_interface.dart';

class QuestionRepository extends Disposable implements IQuestionRepository {
  final Firestore firestore;
  QuestionRepository({@required this.firestore});

  @override
  Future<QuestionModel> getById(String id) async {
    var docSnap = await firestore.collection('questions').document(id).get();
    return QuestionModel.fromDocument(docSnap);
  }

  @override
  Stream<List<QuestionModel>> get() {
    return firestore.collection('questions').snapshots().map(
      (query) => query.documents.map((doc) => QuestionModel.fromDocument(doc)).toList()
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}