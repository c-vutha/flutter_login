import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function onClick;

  const AuthButton(this.title, this.color, this.onClick);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: onClick,
      child: Text(this.title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
