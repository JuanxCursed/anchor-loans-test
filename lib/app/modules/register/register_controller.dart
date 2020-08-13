import 'package:anchor_loans_test/app/shared/auth/auth_controller.dart';
import 'package:anchor_loans_test/app/shared/auth/models/authentication_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  AuthController authController = Modular.get();
  AuthenticationModel auth = AuthenticationModel('', '');
  @observable
  bool loading = false;

  set email(String v) => auth.email = v;
  String get email => auth.email;
  set password(String v) => auth.password = v;
  String get password => auth.password;
}
