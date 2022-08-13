import 'package:comic_log_app/constants/color.dart';
import 'package:flutter/material.dart';

final ThemeData lightThemeData = ThemeData.light().copyWith(
  scaffoldBackgroundColor: lBackgroundColor,
  appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: lMainColor),
      backgroundColor: lForegroundColor),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: lForegroundColor,
    selectedItemColor: lMainColor,
    unselectedItemColor: iconGrey,
    showUnselectedLabels: false,
  ),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: dBackgroundColor,
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: dMainColor),
      backgroundColor: dForegroundColor),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: dForegroundColor,
    selectedItemColor: dMainColor,
    unselectedItemColor: iconGrey,
    showUnselectedLabels: false,
  ),
);
