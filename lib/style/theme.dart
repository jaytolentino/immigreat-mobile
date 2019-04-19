/*
 * Copyright ImmiGreat (c) 2019.
 */

import 'package:flutter/material.dart';

import 'package:immigreat_app/style/colors.dart';

class AppTheme {
  
  static const LOGO_FONT = "Gugi";
  static const PRIMARY_FONT = "Catamaran";

  static ThemeData getTheme({BuildContext context}) {
    ThemeData base = ThemeData(
      primarySwatch: AppColors.PRIMARY_SWATCH,
      accentColor: AppColors.ACCENT_COLOR,
    );
    base.copyWith(
      textTheme: _buildTextTheme(base.textTheme),
    );
    return base;
  }

  static TextTheme _buildTextTheme(TextTheme base) => base.copyWith(
    display4: base.display4.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    display3: base.display3.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    display2: base.display2.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    display1: base.display1.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    headline: base.headline.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    title: base.title.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    subhead: base.subhead.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    body2: base.body2.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    body1: base.body1.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    caption: base.caption.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    button: base.button.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    subtitle: base.subtitle.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
    overline: base.overline.copyWith(
      fontFamily: PRIMARY_FONT,
    ),
  );

}
