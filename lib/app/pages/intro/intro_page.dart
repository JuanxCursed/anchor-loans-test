import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class IntroPage extends StatefulWidget {
  final String title;
  const IntroPage({Key key, this.title = "Welcome"}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/intro.png',
              fit: BoxFit.fitWidth,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Welcome to Borrower Portal',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text('Come on in! We\'re glad to have you here.'),
                  RaisedButton(
                    onPressed: () =>
                        Modular.to.pushReplacementNamed('register'),
                    child: Text('SING UP'),
                  ),
                  FlatButton(
                    onPressed: () => Modular.to.pushReplacementNamed('login'),
                    child: Text('LOG IN'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
