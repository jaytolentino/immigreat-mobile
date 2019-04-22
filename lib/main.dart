/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/modules/app_config.dart';
import 'package:immigreat_app/modules/immigreat_app.dart';
import 'package:immigreat_app/services/flavors.dart';

void main() {
  var dev = AppConfig(
    flavor: Flavor.DEV,
    child: ImmiGreatApp()
  );
  runApp(dev);
}
