import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  ThemeData data() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.white,
        shape: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
