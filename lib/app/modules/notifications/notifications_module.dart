import 'package:flutter/material.dart';

import 'notifications_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'notifications_page.dart';

class NotificationsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NotificationsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NotificationsPage()),
      ];

  static Inject get to => Inject<NotificationsModule>.of();

  @override
  Widget get view => NotificationsPage();
}
