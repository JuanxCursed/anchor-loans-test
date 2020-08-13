import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'location_controller.dart';

class LocationPage extends StatefulWidget {
  final String title;
  const LocationPage({Key key, this.title = "Location"}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState
    extends ModularState<LocationPage, LocationController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[Text('Location page')],
      ),
    );
  }
}
