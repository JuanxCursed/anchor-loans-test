import 'package:anchor_loans_test/app/shared/repositories/users/user_repository_firebase.dart';
import 'package:anchor_loans_test/app/shared/repositories/users/user_repository_interface.dart';

import 'register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'register_page.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
        Bind<UserRepositoryInterface>((i) => UserRepositoryFirebase()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
