/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/style/colors.dart';
import 'package:immigreat_app/style/theme.dart';

class SignInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: _buildBody(context),
  );

  Widget _buildBody(context) => Container(
    decoration: BoxDecoration(
      gradient: AppColors.BACKGROUND_GRADIENT,
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              "ImmiGreat",
              style: Theme.of(context).textTheme.display2.copyWith(
                fontFamily: AppTheme.LOGO_FONT,
                color: AppColors.LOGO_COLOR,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: Text(
              "Move with peace of mind"
            ),
          ),
          _buildGoogleButton(),
          _buildEmailButton(),
        ],
      ),
    ),
  );

  Widget _buildGoogleButton() => FittedBox(
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
      onPressed: () {},
    ),
  );

  Widget _buildEmailButton() => FittedBox(
    fit: BoxFit.contain,
    child: MaterialButton(
      color: AppColors.ACCENT_COLOR,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      minWidth: 240.0,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.email, color: AppColors.PRIMARY_SWATCH,),
          ),
          Text("Sign in with email"),
        ],
      ),
      onPressed: () {},
    ),
  );

}
