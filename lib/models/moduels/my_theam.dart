import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color lightColor=Color(0xFFB7935F);
  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor:lightColor ,
    applyElevationOverlayColor: true,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      bodySmall: GoogleFonts.elMessiri(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      type:BottomNavigationBarType.fixed ,
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color:Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.white),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    iconTheme: IconThemeData(
      color:lightColor,
      size: 28,

    ),
  );
  static ThemeData darkTheme=ThemeData();
}