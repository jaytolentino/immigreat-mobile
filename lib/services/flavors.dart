/*
 * Copyright ImmiGreat (c) 2019.
 */

class Flavor {

  final _value;
  const Flavor._internal(this._value);

  @override
  String toString() => 'Enum.$_value';

  static const DEV = const Flavor._internal('DEV');
  static const PROD = const Flavor._internal('PROD');

  bool isLocal() {
    switch (_value) {
      case 'DEV':
        return true;
      case 'PROD':
        return false;
      default:
        return false;
    }
  }

}
