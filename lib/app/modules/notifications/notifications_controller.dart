import 'package:mobx/mobx.dart';

part 'notifications_controller.g.dart';

class NotificationsController = _NotificationsControllerBase
    with _$NotificationsController;

abstract class _NotificationsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
