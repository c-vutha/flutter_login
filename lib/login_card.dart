import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  final emailField = TextField(
    obscureText: false,
    style: TextStyle(fontSize: 20.0),
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final passwordField = TextField(
    obscureText: true,
    style: TextStyle(fontSize: 20.0),
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login", style: TextStyle(fontSize: 23)),
            SizedBox(height: 30),
            emailField,
            SizedBox(height: 30),
            passwordField,
          ],
        ),
      ),
    );
  }
}

class SignUpCard extends StatelessWidget {
  final emailField = TextField(
    obscureText: false,
    style: TextStyle(fontSize: 20.0),
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final passwordField = TextField(
    obscureText: true,
    style: TextStyle(fontSize: 20.0),
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final confirmPasswordField = TextField(
    obscureText: true,
    style: TextStyle(fontSize: 20.0),
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Confirm Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign Up", style: TextStyle(fontSize: 23)),
            SizedBox(height: 30),
            emailField,
            SizedBox(height: 30),
            passwordField,
            SizedBox(height: 30),
            confirmPasswordField,
          ],
        ),
      ),
    );
  }
}
