import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/course_model.dart';
import '../interfaces/course_repository_interface.dart';

class CourseRepository extends Disposable implements ICourseRepository {
  final Firestore firestore;
  CourseRepository({@required this.firestore});

  @override
  Future<CourseModel> getById(String id) async {
    var docSnap = await firestore.collection('courses').document(id).get();
    return CourseModel.fromDocument(docSnap);
  }

  @override
  Stream<List<CourseModel>> get() {
    return firestore.collection('courses').snapshots().map(
      (query) => query.documents.map(
        (doc) => CourseModel.fromDocument(doc)
      ).toList()
    );
  }

  @override
  void dispose() { }
}