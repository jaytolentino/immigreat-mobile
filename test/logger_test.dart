/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

import 'package:immigreat_app/models/models.dart';
import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/immigreat_app.dart';
import 'package:immigreat_app/reducers/reducers.dart';
import 'package:immigreat_app/services/flavors.dart';
import 'package:immigreat_app/services/logger.dart';

void main() {
  testWidgets('Initialize logger', (WidgetTester tester) async {
    final Store<AppState> store = Store<AppState>(
      loginReducer,
      initialState: AppState.initial(),
    );

    await tester.pumpWidget(
      AppConfig(
        flavor: Flavor.DEV,
        child: ImmiGreatApp(store: store)
      )
    );
    Logger logger = Logger();
    expect(logger, isNotNull);
  });
}
