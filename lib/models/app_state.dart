/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:meta/meta.dart';

@immutable
class AppState {
  final bool isLoggedIn;

  AppState({this.isLoggedIn});

  factory AppState.initial() {
    return AppState(isLoggedIn: false);
  }

  AppState copyWith({bool isLoggedIn}) {
    return AppState(isLoggedIn: isLoggedIn ?? this.isLoggedIn);
  }

  @override
  int get hashCode => isLoggedIn.hashCode;

  @override
  bool operator ==(other) =>
    identical(this, other) ||
    other is AppState &&
      isLoggedIn == other.isLoggedIn;

  @override
  String toString() {
    return 'AppState{isLoggedIn: $isLoggedIn}';
  }

}
