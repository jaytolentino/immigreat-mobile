/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:immigreat_app/services/flavors.dart';

class Logger {

  static Logger _instance;
  static Flavor _flavor;

  factory Logger() {
    if (_instance == null) {
      throw Exception("Must initialize Logger first");
    }
    return _instance;
  }

  Logger.__internal(Flavor flavor) {
    _flavor = flavor;
  }

  Logger.init(Flavor flavor) {
    if (_instance != null) {
      return;
    }
    _instance = Logger.__internal(flavor);
  }

  void log(String text, { Map<String, dynamic> params }) {
    if (_flavor.isLocal()) {
      print('(${_flavor.toString()}) $text');
      print(params.toString());
      return;
    }
  }

}

class Events {
  static const String SIGNED_IN_WITH_GOOGLE = "sign_in_google";
}
