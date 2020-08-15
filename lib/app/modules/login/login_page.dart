import 'package:anchor_loans_test/app/shared/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  bool _obscureText = true;
  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Email',
          border: new OutlineInputBorder(
            borderSide: new BorderSide(),
          ),
        ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onChanged: (value) => controller.email = value.trim(),
      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: _obscureText,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Password',
          border: new OutlineInputBorder(
            borderSide: new BorderSide(),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey.shade800,
              ),
              onPressed: _togglePassword),
        ),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onChanged: (value) => controller.password = value.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Text(
                'Log in',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.start,
              ),
            ),
            showEmailInput(),
            SizedBox(height: 10.0),
            showPasswordInput(),
            SizedBox(height: 20.0),
            Observer(
              builder: (_) => controller.loading
                  ? Loaging()
                  : SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () async {
                          await controller.loginWithEmail();
                        },
                        child: Text("Log in"),
                      ),
                    ),
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                onPressed: () => Modular.to.pop(),
                textColor: Colors.grey.shade800,
                child: Text(
                  'Forgot your password?',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
