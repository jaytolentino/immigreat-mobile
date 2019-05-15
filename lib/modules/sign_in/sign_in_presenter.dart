/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:immigreat_app/modules/sign_in/sign_in_view.dart';
import 'package:immigreat_app/services/auth_manager.dart';
import 'package:immigreat_app/services/logger.dart';

class SignInPresenter {

  SignInView _view;
  AuthManager _auth;
  Logger _logger;

  SignInPresenter(this._view) {
    _auth = AuthManager();
    _logger = Logger();
  }

  void signInWithGoogle() {
    _auth.signInWithGoogle()
    .then((user) {
      if (user == null) {
        _logger.log('Failed to sign in with Google since user was null');
        _view.onSignInFailed();
      }
      _view.onSignInSuccess();
    })
    .catchError((error, stacktrace) {
      _logger.log('Failed to sign in with Google due to error: $error');
      _view.onSignInFailed();
    });
  }


}

