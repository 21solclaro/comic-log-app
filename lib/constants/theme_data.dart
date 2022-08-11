import 'package:flutter/material.dart';

final ThemeData lightThemeData = ThemeData.light().copyWith(
    scaffoldBackgroundColor: lBackgroundColor,
    appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(color: lMainColor),
        backgroundColor: Colors.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: lMainColor,
      unselectedItemColor: iconGrey,
      showUnselectedLabels: false,
    ),
    unselectedWidgetColor: iconGrey);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: dBackgroundColor,
    appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(color: lMainColor),
        backgroundColor: Colors.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: lMainColor,
      unselectedItemColor: iconGrey,
      showUnselectedLabels: false,
    ),
    unselectedWidgetColor: iconGrey);

Color lMainColor = Colors.deepPurple;
Color lBackgroundColor = const Color(0xFFEFEFF4);

Color dMainColor = Colors.deepOrange;
Color dSubColor = const Color(0xCC171717);
Color dBackgroundColor = const Color(0xFF171717);

Color iconGrey = Colors.blueGrey;
