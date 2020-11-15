
import 'dart:ui';

import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildTheme();

_buildTheme() {
  final ThemeData padrao = ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: ThemeData().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'Lato-Regular',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
        ),
    fontFamily: 'Lato-Regular',
    textTheme: ThemeData().textTheme.copyWith(
          bodyText1: TextStyle(
            fontFamily: 'Lato-Regular',
            fontSize: 19,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Lato-Regular',
            fontSize: 19,
          ),
          headline6: TextStyle(
            fontSize: 20,
          ),
          subtitle2: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
          ),
          subtitle1: TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
          button: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
  );
  return padrao;
}
