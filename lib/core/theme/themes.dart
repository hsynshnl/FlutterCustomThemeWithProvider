import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff232323),
    colorScheme: const ColorScheme.dark(),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.grey.shade800,
      centerTitle: true,
      elevation: 12,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
        wordSpacing: 2,
        letterSpacing: 2,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffffffff),
    colorScheme: const ColorScheme.light(),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.grey.shade600,
      centerTitle: true,
      elevation: 12,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
        wordSpacing: 2,
        letterSpacing: 2,
      ),
    ),
  );
}
