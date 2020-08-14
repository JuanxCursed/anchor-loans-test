import 'package:anchor_loans_test/app/modules/details/details_module.dart';
import 'package:anchor_loans_test/app/modules/login/login_module.dart';
import 'package:anchor_loans_test/app/modules/register/register_module.dart';
import 'package:anchor_loans_test/app/pages/intro/intro_page.dart';
import 'package:anchor_loans_test/app/pages/splash/splash_page.dart';
import 'package:anchor_loans_test/app/shared/auth/auth_controller.dart';
import 'package:anchor_loans_test/app/shared/auth/repositories/auth_repository_firebase.dart';
import 'package:anchor_loans_test/app/shared/auth/repositories/auth_repository_interface.dart';
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
        Bind((i) => AuthController()),
        Bind<AuthRepositoryInterface>((i) => AuthRepositoryFirebase()),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          child: (_, __) => SplashPage(),
        ),
        Router(
          Routes.welcome,
          child: (_, __) => IntroPage(),
        ),
        Router(
          Routes.home,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        Router(
          Routes.login,
          module: LoginModule(),
          transition: TransitionType.fadeIn,
        ),
        Router(
          Routes.register,
          module: RegisterModule(),
          transition: TransitionType.fadeIn,
        ),
        Router(
          Routes.details,
          module: DetailsModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
