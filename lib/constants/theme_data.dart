import 'package:comic_log_app/constants/color.dart';
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
