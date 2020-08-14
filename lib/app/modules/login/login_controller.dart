import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:anchor_loans_test/app/shared/auth/models/authentication_model.dart';
import 'package:anchor_loans_test/app/shared/auth/auth_controller.dart';
import 'package:anchor_loans_test/app/shared/constants/routes.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  AuthController authController = Modular.get();
  AuthenticationModel auth = AuthenticationModel('', '');
  @observable
  bool loading = false;

  set email(String v) => auth.email = v.trim();
  String get email => auth.email;
  set password(String v) => auth.password = v.trim();
  String get password => auth.password;

  @action
  Future loginWithGoogle() async {
    try {
      loading = true;
      await authController.loginWithGoogle();
      Modular.to.pushReplacementNamed(Routes.home);
    } catch (e) {
      print(e);
      loading = false;
    }
  }

  @action
  Future loginWithEmail() async {
    try {
      loading = true;
      await authController.loginWithEmailAndPassword(auth);
      Modular.to.pushReplacementNamed(Routes.home);
    } catch (e) {
      print(e);
      loading = false;
    }
  }
}
