import 'package:meta/meta.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smart_coach/app/shared/models/history_model.dart';
import 'package:smart_coach/app/shared/repositories/interfaces/history_repository_interface.dart';
import 'package:smart_coach/app/shared/services/interfaces/history_service_interface.dart';

class HistoryService extends Disposable implements IHistoryService {
  final IHistoryRepository historyRepository;
  HistoryService({@required this.historyRepository});

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Stream<List<HistoryModel>> get() {
    return historyRepository.get();
  }

  @override
  Future<HistoryModel> getById(String id) {
    return historyRepository.getById(id);
  }

  @override
  Stream<List<HistoryModel>> getByUserId(String userId) {
    return historyRepository.getByUserId(userId);
  }
}