/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {

  final VoidCallback onPressed;

  GoogleSignInButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FittedBox(
    fit: BoxFit.contain,
    child: MaterialButton(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      minWidth: 240.0,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image(image: AssetImage("images/logo_google_g.png")),
          ),
          Text("Sign in with Google"),
        ],
      ),
      onPressed: onPressed,
    ),
  );

}
