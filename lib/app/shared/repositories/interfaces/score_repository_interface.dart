import 'package:smart_coach/app/shared/models/score_model.dart';

abstract class IScoreRepository {
  Stream<List<ScoreModel>> get();
  Future<ScoreModel> getById(String id);
}