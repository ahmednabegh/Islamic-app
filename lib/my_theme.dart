import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xFFB7935F);
  static Color colorBlack = Color(0xFF242424);
  static Color colorWhite = Color(0xFFF8F8F8);
static ThemeData lightTheme = ThemeData(
  primaryColor: lightPrimary,
  scaffoldBackgroundColor: Colors.transparent,
appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
  centerTitle: true,
  iconTheme:  IconThemeData(
    color: colorBlack,

  )
),
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  selectedItemColor: colorBlack,
  unselectedItemColor: colorWhite,
  showSelectedLabels: true,

),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: colorBlack,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    headline2:  TextStyle(
      color: colorBlack,
      fontSize: 25,
      fontWeight: FontWeight.w400,
    ),
    subtitle1:  TextStyle(
      color: colorBlack,
      fontSize: 25,
      fontWeight: FontWeight.w500,
    ),
  ),
);
static ThemeData darkTheme = ThemeData();
}