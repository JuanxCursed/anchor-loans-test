import 'package:anchor_loans_test/app/modules/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'details_page.dart';

class DetailsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DetailsPage()),
      ];

  static Inject get to => Inject<DetailsModule>.of();

  @override
  Widget get view => DetailsPage();
}
