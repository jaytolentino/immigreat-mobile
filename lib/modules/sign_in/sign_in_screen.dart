/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:immigreat_app/actions.dart';
import 'package:immigreat_app/models/models.dart';
import 'package:immigreat_app/modules/sign_in/google_sign_in_button.dart';
import 'package:immigreat_app/style/colors.dart';
import 'package:immigreat_app/style/theme.dart';

class SignInScreen extends StatelessWidget {

  SignInScreen({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: AppColors.BACKGROUND_GRADIENT,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo(context),
            _buildTagline(),
            _buildGoogleSignInButton(),
          ],
        ),
      ),
    )
  );

  Widget _buildLogo(context) => Padding(
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

  Widget _buildGoogleSignInButton() => StoreConnector<AppState, VoidCallback>(
    converter: (store) {
      return () => store.dispatch(SignInAction(true));
    },
    builder: (BuildContext context, VoidCallback callback) {
      return GoogleSignInButton(
        onPressed: callback
      );
    },
  );

}
