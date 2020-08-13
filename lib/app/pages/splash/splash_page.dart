import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:anchor_loans_test/app/shared/auth/auth_controller.dart';
import 'package:anchor_loans_test/app/shared/constants/routes.dart';
import 'package:mobx/mobx.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();
    disposer = autorun((_) {
      final auth = Modular.get<AuthController>();

      Future.delayed(Duration(seconds: 5)).then((_) {
        if (auth.status == AuthStatus.login) {
          Modular.to.pushReplacementNamed(Routes.home);
        } else if (auth.status == AuthStatus.logout) {
          Modular.to.pushReplacementNamed(Routes.login);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child:  Image(image: AssetImage('assets/logo.png'))        
            ),
          ),
        ]
      ),
    );
  }
}
