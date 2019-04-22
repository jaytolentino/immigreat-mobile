/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:meta/meta.dart';

import 'package:immigreat_app/services/flavors.dart';

class Logger {

  static Logger _instance;
  static Flavor _flavor;

  factory Logger() {
    if (_instance == null) {
      throw new Exception("Must initialize Logger first");
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
    _instance = new Logger.__internal(flavor);
  }

  static Logger get instance {
    if (_instance == null) {
      throw new Exception("Must initialize Logger first");
    }
    return _instance;
  }

  void log(String text, { Map<String, dynamic> params }) {
    print('(${_flavor.toString()}) $text');
    print(params.toString());
  }

}
