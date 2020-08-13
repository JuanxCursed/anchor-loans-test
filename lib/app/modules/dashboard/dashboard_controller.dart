import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardControllerBase with _$DashboardController;

abstract class _DashboardControllerBase with Store {
  @observable
  Map<String, double> chartMap = new Map();

  @observable
  bool loading = true;

  _DashboardControllerBase() {
    // setLoading(true);
    loadSummary();
    setLoading(false);
  }

  @action
  void setLoading(bool isLoading) {
    loading = isLoading;
  }

  @action
  void loadSummary() {
    chartMap.putIfAbsent("IN PROGRESS", () => 27);
    chartMap.putIfAbsent("ACTIVE", () => 20);
    chartMap.putIfAbsent("PAID", () => 53);
  }
}
