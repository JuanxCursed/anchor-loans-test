import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:anchor_loans_test/app/shared/models/todo_model.dart';

import 'todo_repository_interface.dart';

class TodoRepositoryFirebase implements TodoRepositoryInterface {
  final Firestore firestore;

  TodoRepositoryFirebase(this.firestore);

  @override
  Stream<List<TodoModel>> getTodos() {
    return firestore.collection('todo').snapshots().map((query) => query
        .documents
        .map((document) => TodoModel.fromDocument(document))
        .toList());
  }
}
