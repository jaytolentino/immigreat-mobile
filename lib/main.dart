/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:immigreat_app/models/models.dart';
import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/immigreat_app.dart';
import 'package:immigreat_app/reducers/reducers.dart';
import 'package:immigreat_app/services/flavors.dart';

void main() {
  final Store<AppState> store = Store<AppState>(
    loginReducer,
    initialState: AppState.initial(),
  );

  var dev = AppConfig(
    flavor: Flavor.DEV,
    child: ImmiGreatApp(store: store)
  );

  runApp(dev);
}
