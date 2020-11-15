
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
  );
  return padrao;
}
