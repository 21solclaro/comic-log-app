// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'color.dart';

final ThemeData lightThemeData = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColor.lBackgroundColor,
  appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: AppColor.lMainColor),
      backgroundColor: AppColor.lForegroundColor),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColor.lForegroundColor,
    selectedItemColor: AppColor.lMainColor,
    unselectedItemColor: AppColor.iconGrey,
    showUnselectedLabels: false,
  ),
  cardTheme: const CardTheme(color: AppColor.lForegroundColor),
  listTileTheme: const ListTileThemeData(iconColor: AppColor.iconGrey),
  tabBarTheme: const TabBarTheme(
      indicator: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: AppColor.lMainColor, width: 3)),
      ),
      labelColor: AppColor.lMainColor,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: Colors.blueGrey),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColor.dBackgroundColor,
  appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: AppColor.dMainColor),
      backgroundColor: AppColor.dForegroundColor),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColor.dForegroundColor,
    selectedItemColor: AppColor.dMainColor,
    unselectedItemColor: AppColor.iconGrey,
    showUnselectedLabels: false,
  ),
  cardTheme: const CardTheme(color: AppColor.dForegroundColor),
  listTileTheme: const ListTileThemeData(iconColor: AppColor.iconGrey),
  tabBarTheme: const TabBarTheme(
      indicator: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: AppColor.dMainColor, width: 3)),
      ),
      labelColor: AppColor.dMainColor,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: Colors.blueGrey),
);
