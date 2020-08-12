import '../../models/plan_model.dart';

abstract class IPlanRepository {
  Stream<List<PlanModel>> get();
  Future<PlanModel> getById(String id);
  
}