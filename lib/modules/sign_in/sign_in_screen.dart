/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/modules/sign_in/sign_in_presenter.dart';
import 'package:immigreat_app/modules/sign_in/sign_in_view.dart';
import 'package:immigreat_app/modules/sign_in/widgets/index.dart';
import 'package:immigreat_app/style/colors.dart';
import 'package:immigreat_app/style/theme.dart';

class SignInScreen extends StatelessWidget {

  SignInScreen({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SignInBody(),
  );

}

class SignInBody extends StatefulWidget {

  SignInBody({ Key key }) : super(key: key);

  @override
  State createState() => SignInBodyState();

}

class SignInBodyState extends State<SignInBody> implements SignInView {

  SignInPresenter _presenter;

  SignInBodyState() {
    _presenter = SignInPresenter(this);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      _buildLogo(),
      _buildTagline(),
      GoogleSignInButton(onPressed: () {
        _presenter.signInWithGoogle();
      }),
    ];
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.BACKGROUND_GRADIENT,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }

  Widget _buildLogo() => Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Text(
      "ImmiGreat",
      style: Theme.of(context).textTheme.display2.copyWith(
        fontFamily: AppTheme.LOGO_FONT,
        color: AppColors.LOGO_COLOR,
      ),
    ),
  );

  Widget _buildTagline() => Padding(
    padding: EdgeInsets.only(bottom: 24.0),
    child: Text("Move with peace of mind"),
  );

  @override
  void onSignInSuccess() {
    SnackBar snackBar = SnackBar(content: Text("Success!"));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  void onSignInFailed() {
    SnackBar snackBar = SnackBar(
      content: Text("There was an issues signing you in with Google.")
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
