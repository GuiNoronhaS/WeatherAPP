
import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData padrao = ThemeData(
    appBarTheme: AppBarTheme(
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              fontFamily: 'OpenSans-Regular',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
    ),
    primaryColor: Color.fromRGBO(0, 33, 51, 1.0),
    accentColor: Color.fromRGBO(0, 33, 51, 1.0),
    fontFamily: 'OpenSans-Regular',
    textTheme: ThemeData().textTheme.copyWith(
          bodyText1: TextStyle(
            fontFamily: 'OpenSans-Regular',
            fontSize: 19,
          ),
          bodyText2: TextStyle(
            fontFamily: 'OpenSans-Regular',
            fontSize: 19,
          ),
          headline6: TextStyle(
            fontFamily: 'OpenSans-Regular',
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
          subtitle1: TextStyle(
            fontFamily: 'OpenSans-Regular',
            fontSize: 19,
          ),
          subtitle2: TextStyle(
            fontFamily: 'OpenSans-Regular',
            fontSize: 19,
          ),
          button: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
  );
  return padrao;
}
