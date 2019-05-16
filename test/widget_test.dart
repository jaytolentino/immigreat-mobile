// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redux/redux.dart';

import 'package:immigreat_app/models/models.dart';
import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/immigreat_app.dart';
import 'package:immigreat_app/modules/sign_in/sign_in_screen.dart';
import 'package:immigreat_app/modules/sign_in/google_sign_in_button.dart';
import 'package:immigreat_app/reducers/reducers.dart';
import 'package:immigreat_app/services/auth_manager.dart';
import 'package:immigreat_app/services/flavors.dart';
import 'package:immigreat_app/services/logger.dart';

void main() {
  testWidgets('Load sign in screen', (WidgetTester tester) async {
    final Store<AppState> store = Store<AppState>(
      loginReducer,
      initialState: AppState.initial(),
    );

    // TODO mock AuthManager
    AuthManager.init(
      firebaseAuth: FirebaseAuth.instance,
      googleSignIn: GoogleSignIn(scopes: ['email', 'profile'])
    );

    // TODO mock Logger
    Logger.init(Flavor.DEV);

    var testSignInScreen = AppConfig(
      flavor: Flavor.DEV,
      child: ImmiGreatApp(store: store, home: SignInScreen())
    );

    await tester.pumpWidget(testSignInScreen);

    expect(find.text('ImmiGreat', skipOffstage: false), findsOneWidget);
    expect(find.byType(GoogleSignInButton), findsOneWidget);
  });
}
