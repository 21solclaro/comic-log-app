import 'color.dart';
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
  cardTheme: CardTheme(color: lForegroundColor),
  listTileTheme: ListTileThemeData(iconColor: iconGrey),
  tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        border: Border(bottom: BorderSide(color: lMainColor, width: 3)),
      ),
      labelColor: lMainColor,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: Colors.blueGrey),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: dBackgroundColor,
  appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: dMainColor),
      backgroundColor: dForegroundColor),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: dForegroundColor,
    selectedItemColor: dMainColor,
    unselectedItemColor: iconGrey,
    showUnselectedLabels: false,
  ),
  cardTheme: CardTheme(color: dForegroundColor),
  listTileTheme: ListTileThemeData(iconColor: iconGrey),
  tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        border: Border(bottom: BorderSide(color: dMainColor, width: 3)),
      ),
      labelColor: dMainColor,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: Colors.blueGrey),
);
