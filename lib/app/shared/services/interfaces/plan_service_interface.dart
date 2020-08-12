import 'package:smart_coach/app/shared/models/plan_model.dart';

abstract class IPlanService {
  Stream<List<PlanModel>> get();
  Future<PlanModel> getById(String id);
}