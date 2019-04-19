/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/modules/sign_in/sign_in_screen.dart';
import 'package:immigreat_app/style/theme.dart';

class ImmiGreatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImmiGreat',
      theme: AppTheme.getTheme(context: context),
      home: SignInScreen(),
    );
  }
}
