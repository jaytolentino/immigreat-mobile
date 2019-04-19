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
      gradient: LinearGradient(
        colors: [
          AppColors.PRIMARY_COLOR,
          AppColors.ACCENT_COLOR
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "ImmiGreat",
            style: Theme.of(context).textTheme.display2.copyWith(
              fontFamily: AppTheme.LOGO_FONT,
              color: AppColors.LOGO_COLOR,
            ),
          ),
          Text(
            "Immigrate with peace of mind"
          ),
        ],
      ),
    ),
  );

}
