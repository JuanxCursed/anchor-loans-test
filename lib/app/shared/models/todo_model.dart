import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String title;
  bool check;
  DocumentReference reference;

  TodoModel({
    this.reference,
    this.title = '',
    this.check = false,
  });

  factory TodoModel.fromDocument(DocumentSnapshot document) {
    return TodoModel(
        check: document['check'],
        title: document['title'],
        reference: document.reference);
  }

  Future save() async {
    if (reference == null) {
      reference = await Firestore.instance
          .collection('todo')
          .add({'title': title, 'check': check});
    } else {
      reference.updateData({
        'title': title,
        'check': check,
      });
    }
  }
}
