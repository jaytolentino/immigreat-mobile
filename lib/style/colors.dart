/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

class AppColors {

  static const _primaryColorValue = 0xFFD5C5D0;

  static const PRIMARY_COLOR = Color(_primaryColorValue);
  static const ACCENT_COLOR = Color(0xFFF2E9EF);
  static const LOGO_COLOR = Color(0xFF744065);

  static const PRIMARY_SWATCH = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color.fromRGBO(208, 218, 246, 0.1),
      100: Color.fromRGBO(208, 218, 246, 0.2),
      200: Color.fromRGBO(208, 218, 246, 0.3),
      300: Color.fromRGBO(208, 218, 246, 0.4),
      400: Color.fromRGBO(208, 218, 246, 0.5),
      500: Color.fromRGBO(208, 218, 246, 0.6),
      600: Color.fromRGBO(208, 218, 246, 0.7),
      700: Color.fromRGBO(208, 218, 246, 0.8),
      800: Color.fromRGBO(208, 218, 246, 0.9),
      900: Color.fromRGBO(208, 218, 246, 1),
    },
  );

  static const BACKGROUND_GRADIENT = LinearGradient(
    colors: [
      Color(_primaryColorValue),
      Color(0xFFF1EBEF),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

}
