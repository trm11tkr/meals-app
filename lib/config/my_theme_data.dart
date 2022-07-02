import 'package:flutter/material.dart';

final myLightThemeData = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light().copyWith(
    primary: const Color(0xFFAACF52),
    secondary: const Color(0xFFFFF33F),
  ),
  scaffoldBackgroundColor: const Color.fromRGBO(255, 254, 229, 1),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontFamily: 'KaiseiOpti',
      fontWeight: FontWeight.w700,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 5,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.w500,
    ),
  ),
);

final myDarkThemeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF141920),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFC1DB81),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontFamily: 'KaiseiOpti',
      fontWeight: FontWeight.w700,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFDED46E),
    elevation: 2,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: 'MPLUSRounded1c',
      fontWeight: FontWeight.w700,
    ),
  ),
);
