import 'package:flutter/material.dart';
import 'dashboard_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dashboard_page.dart';

class DashboardModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DashboardController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DashboardPage()),
      ];

  static Inject get to => Inject<DashboardModule>.of();

  @override
  Widget get view => DashboardPage();
}
