import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/score_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/score_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/score_service_interface.dart';

class ScoreService extends Disposable implements IScoreService {
  final IScoreRepository scoreRepository;
  ScoreService({@required this.scoreRepository});

  @override
  void dispose() { }

  @override
  Stream<List<ScoreModel>> get() {
    return scoreRepository.get();
  }

  @override
  Future<ScoreModel> getById(String id) {
    return scoreRepository.getById(id);
  }
}