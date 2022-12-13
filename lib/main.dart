import 'package:flutter/material.dart';

import 'home_page.dart';
import 'presenter/ui/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLight = AppTheme.lighTheme == true;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lighTheme,
      darkTheme: AppTheme.darkTheme,
      // themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
      // themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
