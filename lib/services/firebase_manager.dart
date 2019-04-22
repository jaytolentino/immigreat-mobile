/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:immigreat_app/services/logger.dart';

class FirebaseManager {

  static FirebaseManager _instance;
  static GoogleSignIn _googleSignIn;
  static FirebaseAuth _auth;

  factory FirebaseManager() {
    if (_instance == null) {
      throw new Exception("Must initialize FirebaseManager first");
    }
    return _instance;
  }

  FirebaseManager.__internal() {
    _googleSignIn = GoogleSignIn();
    _auth = FirebaseAuth.instance;
  }

  FirebaseManager.init() {
    if (_instance != null) {
      return;
    }
    _instance = new FirebaseManager.__internal();
  }

  static FirebaseManager get instance {
    if (_instance == null) {
      throw new Exception("Must initialize FirebaseManager first");
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
    Logger.instance.log("Signed in with Google: " + user.email);
    return user;
  }

}
