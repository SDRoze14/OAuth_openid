import 'package:flutter/material.dart';
import 'package:oauth/model/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OAuth2",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}