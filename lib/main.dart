import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_template/core/theme/themes.dart';
import 'package:theme_template/page/home_page.dart';

import 'core/provider/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider()..initialize(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Custom Theme',
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        themeMode: provider.themeMode,
        home: const HomeScreen(),
      );
    });
  }
}
