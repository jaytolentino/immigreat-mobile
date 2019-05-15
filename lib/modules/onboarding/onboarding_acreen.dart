/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/style/colors.dart';

class OnboardingScreen extends StatelessWidget {

  OnboardingScreen({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: _buildBody(context),
  );

  Widget _buildBody(context) {
    List<Widget> children = [
      _buildWelcome(context),
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
  
  Widget _buildWelcome(BuildContext context) => Padding(
    padding: EdgeInsets.all(16.0),
    child: Text("Welcome!"),
  );

}
