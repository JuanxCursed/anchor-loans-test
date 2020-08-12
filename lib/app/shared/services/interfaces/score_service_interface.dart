import 'package:smart_coach/app/shared/models/score_model.dart';

abstract class IScoreService {
  Stream<List<ScoreModel>> get();
  Future<ScoreModel> getById(String id);
}