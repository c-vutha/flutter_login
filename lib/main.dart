import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(FlutterLogin());
}

class FlutterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Login",
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.orangeAccent,
        ),
        home: LoginPage());
  }
}
