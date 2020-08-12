import 'package:smart_coach/app/shared/models/keyword_model.dart';

abstract class IKeywordRepository {
  Stream<List<KeywordModel>> get();
  Future<KeywordModel> getById(String id);
}