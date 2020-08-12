import 'package:smart_coach/app/shared/models/history_model.dart';

abstract class IHistoryRepository {
  Stream<List<HistoryModel>> get();
  Stream<List<HistoryModel>> getByUserId(String userId);
  Future<HistoryModel> getById(String id);
}