/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import 'package:immigreat_app/services/logger.dart';

class AuthManager {

  static AuthManager _instance;
  static GoogleSignIn _googleSignIn;
  static FirebaseAuth _auth;

  factory AuthManager() {
    if (_instance == null) {
      throw Exception("Must initialize AuthManager first");
    }
    return _instance;
  }

  AuthManager._internal({
    @required GoogleSignIn googleSignIn,
    @required FirebaseAuth firebaseAuth,
  }) {
    _googleSignIn = googleSignIn;
    _auth = firebaseAuth;
  }

  AuthManager.init({
    @required GoogleSignIn googleSignIn,
    @required FirebaseAuth firebaseAuth,
  }) {
    if (_instance != null) {
      return;
    }
    _instance = AuthManager._internal(
      firebaseAuth: firebaseAuth,
      googleSignIn: googleSignIn,
    );
  }

  static AuthManager get instance {
    if (_instance == null) {
      throw Exception("Must initialize FirebaseManager first");
    }
    return _instance;
  }

  Future<FirebaseUser> signInWithGoogle() async {

    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    Logger().log("Signed in with Google: " + user.email);
    return user;
  }

}
