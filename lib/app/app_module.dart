import 'package:anchor_loans_test/app/modules/login/login_module.dart';
import 'package:anchor_loans_test/app/pages/splash/splash_page.dart';
import 'package:anchor_loans_test/app/shared/constants/routes.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:anchor_loans_test/app/app_widget.dart';
import 'package:anchor_loans_test/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashPage()),
        Router(Routes.home,
            module: HomeModule(), transition: TransitionType.fadeIn),
        Router(Routes.login,
            module: LoginModule(), transition: TransitionType.noTransition),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
