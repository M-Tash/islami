import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryLightColor = Color(0xffB7935F);
  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLightColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColor

      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: blackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),

      )
  );

}