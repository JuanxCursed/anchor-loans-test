import 'package:smart_coach/app/shared/models/history_model.dart';

abstract class IHistoryService {
  Stream<List<HistoryModel>> get();
  Stream<List<HistoryModel>> getByUserId(String userId);
  Future<HistoryModel> getById(String id);
}