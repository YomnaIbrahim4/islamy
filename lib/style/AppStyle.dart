import 'package:flutter/material.dart';

class AppStyle{


  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkSecondary = Color(0xffFACC1D);


  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: lightPrimary,
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    cardTheme: CardTheme(
      elevation: 15,
      margin: EdgeInsets.all(20),
      surfaceTintColor: Colors.white,
      color: Colors.white,
    ),
    dividerTheme: DividerThemeData(
      color: lightPrimary,
      thickness: 2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      selectedIconTheme: IconThemeData(
        color: Colors.black, // selected icon color
        size: 35,
      ),
      selectedItemColor: Colors.black, // label color
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 35,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: lightPrimary,
      secondary: lightPrimary.withOpacity(0.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onPrimaryContainer: lightPrimary,

    ),
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary
    ),
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: darkSecondary,
        ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: darkSecondary,
      ),
    ),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    cardTheme: CardTheme(
      elevation: 15,
      margin: EdgeInsets.all(20),
      surfaceTintColor: darkPrimary,
      color: darkPrimary,
    ),
    dividerTheme: DividerThemeData(
      color: darkSecondary,
      thickness: 2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: darkSecondary, // selected icon color
        size: 35,
      ),
      selectedItemColor: darkSecondary, // label color
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 35,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: darkPrimary,
      secondary: darkSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onPrimaryContainer: darkSecondary,

    ),
    useMaterial3: true,
  );
}