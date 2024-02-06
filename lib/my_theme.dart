import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryLightColor = Color(0xffB7935F);
  static Color primaryDarkColor = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLightColor,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(selectedItemColor: blackColor),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
      ));
  static ThemeData darkMode = ThemeData(
      primaryColor: primaryDarkColor,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(selectedItemColor: yellowColor),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: yellowColor,
        ),
      ));
}