import 'package:flutter_modular/flutter_modular.dart';
import 'package:anchor_loans_test/app/shared/auth/auth_controller.dart';
import 'package:anchor_loans_test/app/shared/constants/routes.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  _HomeControllerBase();

  logout() async {
    Modular.get<AuthController>().logout();
    Modular.to.pushReplacementNamed(Routes.login);
  }
}
