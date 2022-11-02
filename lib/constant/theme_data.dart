// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'color.dart';

final ThemeData lightThemeData = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColor.lightColor,
  appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: AppColor.lMainColor),
      backgroundColor: AppColor.lightColor),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColor.lightColor,
    selectedItemColor: AppColor.lMainColor,
    unselectedItemColor: AppColor.iconGrey,
    showUnselectedLabels: false,
    elevation: 0,
  ),
  cardTheme: const CardTheme(color: AppColor.lightColor),
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
  scaffoldBackgroundColor: AppColor.darkColor,
  appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: AppColor.dMainColor),
      backgroundColor: AppColor.darkColor),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColor.darkColor,
    selectedItemColor: AppColor.dMainColor,
    unselectedItemColor: AppColor.iconGrey,
    showUnselectedLabels: false,
    elevation: 0,
  ),
  cardTheme: const CardTheme(color: AppColor.darkColor),
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
