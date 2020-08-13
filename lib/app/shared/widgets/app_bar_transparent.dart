import 'package:flutter/material.dart';

class AppBarTransparent extends StatelessWidget {
  AppBarTransparent({
    Key key,
    @required this.title,
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
