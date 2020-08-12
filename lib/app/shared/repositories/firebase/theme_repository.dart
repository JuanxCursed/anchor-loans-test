import 'package:flutter_modular/flutter_modular.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/theme_model.dart';
import '../interfaces/theme_repository_interface.dart';

class ThemeRepository extends Disposable implements IThemeRepository {
  final Firestore firestore;
  ThemeRepository({@required this.firestore});

  @override
  Future<ThemeModel> getById(String id) async {
    var docSnap = await firestore.collection('themes').document(id).get();
    return ThemeModel.fromDocument(docSnap);
  }

  @override
  Stream<List<ThemeModel>> get() {
    return firestore.collection('themes').snapshots().map(
      (query) => query.documents.map((doc) => ThemeModel.fromDocument(doc)).toList()
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}