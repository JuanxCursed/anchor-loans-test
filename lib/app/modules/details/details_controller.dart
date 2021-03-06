import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

class DetailsController = _DetailsControllerBase with _$DetailsController;

abstract class _DetailsControllerBase with Store {
  @observable
  bool loading = true;

  _DetailsControllerBase() {
    setLoading(false);
  }

  @action
  void setLoading(bool isLoading) {
    loading = isLoading;
  }
}
