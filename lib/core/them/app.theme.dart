import 'package:flutter/material.dart';
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue, brightness: Brightness.light, appBarTheme: const AppBarTheme(
    elevation: 0, centerTitle: true, backgroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.black), titleTextStyle: TextStyle(
    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, ), ), );
  static ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue, brightness: Brightness.dark, appBarTheme: const AppBarTheme(
  elevation: 0, centerTitle: true,
  ),
  );
}