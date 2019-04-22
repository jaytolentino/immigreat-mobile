/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/sign_in/sign_in_screen.dart';
import 'package:immigreat_app/services/logger.dart';
import 'package:immigreat_app/services/firebase_manager.dart';
import 'package:immigreat_app/style/theme.dart';

class ImmiGreatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    Logger.init(config.flavor);
    FirebaseManager.init();
    return MaterialApp(
      title: 'ImmiGreat',
      theme: AppTheme.getTheme(context: context),
      home: SignInScreen(),
    );
  }

}
