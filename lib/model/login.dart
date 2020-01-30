import 'package:flutter/material.dart';
import 'package:oauth/oauth/oauth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: buttonSection(),
        ),
      ),
    );
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      margin: EdgeInsets.only(top: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 60.0),
      child: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              authenticate();
            },
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              "Login OAuth",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
          Test()
        ],
      ),
    );
  }
}
