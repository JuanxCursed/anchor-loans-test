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
      // @event: open app
      final auth = Modular.get<AuthController>();
      Future.delayed(Duration(milliseconds: 2500)).then((_) {
        if (auth.status == AuthStatus.login) {
          // @event: is logged
          //Modular.to.pushReplacementNamed(Routes.home);
        } else if (auth.status == AuthStatus.logout) {
          // @event: not logged
          // @idea: maybe show intro only on first access, then if is not logged, show login page directly?
          //Modular.to.pushReplacementNamed(Routes.welcome);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
