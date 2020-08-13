import 'package:anchor_loans_test/app/modules/dashboard/dashboard_module.dart';
import 'package:anchor_loans_test/app/modules/location/location_module.dart';
import 'package:anchor_loans_test/app/modules/notifications/notifications_module.dart';
import 'package:anchor_loans_test/app/modules/profile/profile_module.dart';
import 'package:anchor_loans_test/app/modules/settings/settings_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  List widgetOptions = [
    DashboardModule(),
    NotificationsModule(),
    LocationModule(),
    ProfileModule(),
    SettingsModule()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return widgetOptions.elementAt(controller.currentIndex);
      }),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return Observer(builder: (_) {
      return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex,
        onTap: (index) {
          controller.updateCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), title: Text('Dashboard')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notificações')),
          BottomNavigationBarItem(
              icon: Icon(Icons.gps_fixed), title: Text('Localização')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Perfil')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Configurações')),
        ],
      );
    });
  }
}
