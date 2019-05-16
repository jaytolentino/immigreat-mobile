/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:immigreat_app/models/models.dart';
import 'package:immigreat_app/actions.dart';

AppState loginReducer(AppState state, action) {
  if (action is SignInAction) {
    return state.copyWith(isLoggedIn: action.isSignedIn);
  }
  return state;
}
