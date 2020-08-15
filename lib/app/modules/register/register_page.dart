import 'package:anchor_loans_test/app/shared/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  bool _obscureText = true;
  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget showInput(String key, String label, TextInputType type) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: type,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: label,
          border: new OutlineInputBorder(
            borderSide: new BorderSide(),
          ),
        ),
        validator: (value) =>
            value.isEmpty ? 'The $label can\'t be empty' : null,
        onChanged: (value) => controller.setField(
            key: key, value: value.trim()), // just for this test
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<bool> _selections = List.generate(3, (_) => false);

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          Text(
            'Sign up',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.start,
          ),
          showInput('fullName', 'Full Name', TextInputType.text),
          showInput('email', 'E-mail', TextInputType.emailAddress),
          showInput('birthDate', 'Birthday', TextInputType.datetime),
          showInput(
              'primaryAddress', 'Primary Address', TextInputType.streetAddress),
          showInput('password', 'Password', TextInputType.visiblePassword),
          SizedBox(height: 20.0),
          ToggleButtons(
            borderRadius: BorderRadius.circular(5),
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width - 135) / 3,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('I\'m a...'),
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) / 3,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Borrower'),
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) / 3,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Investor'),
                  ],
                ),
              ),
            ],
            isSelected: _selections,
            onPressed: (int index) {
              if (index > 0) {
                setState(() {
                  _selections[index] = !_selections[index];
                });
              }
            },
          ),
          SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              onPressed: () async {
                var user;
                if (user != null) {
                  Modular.to.popAndPushNamed('/home');
                }
              },
              child: Text("Sign up"),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
