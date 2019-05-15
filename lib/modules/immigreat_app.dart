/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/sign_in/sign_in_screen.dart';
import 'package:immigreat_app/services/logger.dart';
import 'package:immigreat_app/services/auth_manager.dart';
import 'package:immigreat_app/style/theme.dart';

class ImmiGreatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    Logger.init(config.flavor);
    AuthManager.init(
      firebaseAuth: FirebaseAuth.instance,
      googleSignIn: GoogleSignIn(scopes: ['email', 'profile'])
    );
    return MaterialApp(
      title: 'ImmiGreat',
      theme: AppTheme.getTheme(context: context),
      home: SignInScreen(),
    );
  }

}
