import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/plan_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/plan_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/plan_service_interface.dart';

class PlanService extends Disposable implements IPlanService {
  final IPlanRepository planRepository;
  PlanService({@required this.planRepository});

  @override
  void dispose() { }

  @override
  Stream<List<PlanModel>> get() {
    return planRepository.get();
  }

  @override
  Future<PlanModel> getById(String id) {
    return planRepository.getById(id);
  }
}