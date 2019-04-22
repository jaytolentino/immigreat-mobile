/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:immigreat_app/services/flavors.dart';

///
/// A widget providing environment-specific config variables to child widget
///
class AppConfig extends InheritedWidget {

  final Flavor flavor;

  AppConfig({
    @required this.flavor,
    @required Widget child,
  }) : super(child: child);

  static AppConfig of(BuildContext context)
  => context.inheritFromWidgetOfExactType(AppConfig);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

}
