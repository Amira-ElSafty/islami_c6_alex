import 'package:flutter/material.dart';

class MyThemeData{
  static Color goldPrimary = Color(0xFFB7935F);
  static Color black = Color(0xFF242424);
  static Color white = Colors.white;
  static final ThemeData lightMode = ThemeData(
    primaryColor: goldPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: black
      )

    ),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: black
      ),
        headline3: TextStyle(
            color: MyThemeData.black,
            fontSize: 25,
            fontWeight: FontWeight.w700
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
      unselectedItemColor: white,

    )
  );
  static final ThemeData darkMode = ThemeData(

  );
}