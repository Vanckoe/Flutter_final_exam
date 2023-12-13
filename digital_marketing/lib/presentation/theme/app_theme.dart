import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme => _appTheme;
  static final ThemeData _appTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: _bottomNavigationBarThemeData,
    elevatedButtonTheme: _elevatedButtonThemeData,
    progressIndicatorTheme: _progressIndicatorThemeData,
  );

  static final ProgressIndicatorThemeData _progressIndicatorThemeData =
      ProgressIndicatorThemeData(
    color: Colors.white,
  );

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      fixedSize: const Size(double.maxFinite,44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static final BottomNavigationBarThemeData _bottomNavigationBarThemeData =
      BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blue,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );
}
