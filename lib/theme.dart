import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color appPrimaryContrastingColor = const Color(0xFF4CD964);

Color appBackgroundColor = const Color(0xFFF2F1F6);

Color tabBackgroundColor = const Color(0xFFF2F1F6);

Color appPrimaryColor = Colors.green;

CupertinoThemeData mainTheme = CupertinoThemeData(
  brightness: Brightness.light,
  /* scaffoldBackgroundColor: appBackgroundColor, */
  /* scaffoldBackgroundColor: CupertinoColors.systemBackground, */
  scaffoldBackgroundColor: tabBackgroundColor,
  primaryColor: appPrimaryColor,
  /* primaryContrastingColor: appPrimaryContrastingColor, */
  textTheme: CupertinoTextThemeData(
    textStyle: TextStyle(fontFamily: 'SF Pro Text'),
  ),
  /* barBackgroundColor: Color(0xFF1F1F1F), */
  /* barBackgroundColor: Colors.white */
);

CupertinoThemeData getMainTheme() => mainTheme;
