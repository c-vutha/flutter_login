import 'package:flutter/material.dart';

import 'login_button.dart';
import 'login_card.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoginPage = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final switchScreen = () {
      setState(() {
        isLoginPage = !isLoginPage;
      });
    };
    final onSuccess = () {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Success"),
            );
          });
    };

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Container(
              height: size.height * 0.5,
              color: Colors.white,
              padding: EdgeInsets.all(8.0),
              child: isLoginPage ? LoginCard() : SignUpCard(),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  AuthButton(isLoginPage ? "Login" : "Sign up",
                      theme.primaryColor, onSuccess),
                  SizedBox(height: 10),
                  AuthButton(!isLoginPage ? "Login" : "Sign up",
                      theme.accentColor, switchScreen),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
