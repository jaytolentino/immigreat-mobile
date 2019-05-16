/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redux/redux.dart';

import 'package:immigreat_app/models/models.dart';
import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/onboarding/onboarding_acreen.dart';
import 'package:immigreat_app/modules/sign_in/sign_in_screen.dart';
import 'package:immigreat_app/services/logger.dart';
import 'package:immigreat_app/services/auth_manager.dart';
import 'package:immigreat_app/style/theme.dart';

class ImmiGreatApp extends StatelessWidget {

  final Store<AppState> store;
  final Widget home;

  ImmiGreatApp({
    Key key,
    @required this.store,
    this.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    Logger.init(config.flavor);
    AuthManager.init(
      firebaseAuth: FirebaseAuth.instance,
      googleSignIn: GoogleSignIn(scopes: ['email', 'profile'])
    );
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'ImmiGreat',
        theme: AppTheme.getTheme(context: context),
        home: home ?? StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) {
            // TODO create ViewModel
            return state.isLoggedIn ? OnboardingScreen() : SignInScreen();
          },
        ),
      ),
    );
  }

}
