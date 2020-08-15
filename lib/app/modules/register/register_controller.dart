import 'package:anchor_loans_test/app/shared/auth/auth_controller.dart';
import 'package:anchor_loans_test/app/shared/auth/models/authentication_model.dart';
import 'package:anchor_loans_test/app/shared/constants/routes.dart';
import 'package:anchor_loans_test/app/shared/repositories/users/user_repository_interface.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  AuthController authController = Modular.get();
  UserRepositoryInterface userRepo = Modular.get();

  @observable
  bool loading = false;

  @observable
  Map<String, dynamic> fields = Map();

  @observable
  List<bool> selectedType = List.generate(3, (_) => false);

  @action
  void setField({@required String key, @required dynamic value}) {
    fields[key] = value;
  }

  @action
  void setUserType({@required int type}) {
    selectedType = List.generate(3, (_) => false);
    selectedType[type] = !selectedType[type];
  }

  @action
  Future<void> register() async {
    try {
      AuthenticationModel auth =
          AuthenticationModel(fields['email'], fields['password']);
      await authController.signUpWithEmailAndPassword(auth);
      print(authController.user);
      await userRepo.save(authController.user.uid, fields);
      Modular.to.popAndPushNamed(Routes.home);
    } catch (e) {
      print(e);
      loading = false;
    }
  }
}
