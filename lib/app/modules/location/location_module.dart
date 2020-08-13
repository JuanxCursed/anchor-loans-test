import 'package:flutter/cupertino.dart';

import 'location_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'location_page.dart';

class LocationModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LocationController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LocationPage()),
      ];

  static Inject get to => Inject<LocationModule>.of();

  @override
  Widget get view => LocationPage();
}
