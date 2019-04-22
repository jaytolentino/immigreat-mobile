/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter_test/flutter_test.dart';

import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/immigreat_app.dart';
import 'package:immigreat_app/services/flavors.dart';
import 'package:immigreat_app/services/firebase_manager.dart';

void main() {
  testWidgets('Initialize logger', (WidgetTester tester) async {
    await tester.pumpWidget(
        AppConfig(
            flavor: Flavor.DEV,
            child: ImmiGreatApp()
        )
    );
    FirebaseManager firebaseManager = FirebaseManager.instance;
    expect(firebaseManager, isNotNull);
  });
}
