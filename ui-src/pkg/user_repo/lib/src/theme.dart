import 'package:flutter/material.dart';

class ThemeManager {
  ThemeData _lightTheme = ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.light().copyWith(),
      primaryTextTheme: Typography.material2021(platform: TargetPlatform.linux)
          .black
          .copyWith());

  ThemeData _darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark().copyWith(),
      primaryTextTheme: Typography.material2021(platform: TargetPlatform.linux)
          .white
          .copyWith(
            displayLarge: const TextStyle(
              color: Color.fromRGBO(138, 180, 248, 1),
            ),
          ));

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;
  bool get isDark => _themeMode == ThemeMode.dark;
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;

  void toggleTheme() {
    _themeMode == ThemeMode.light
        ? _themeMode = ThemeMode.dark
        : _themeMode = ThemeMode.light;
  }

  ThemeData getTheme() {
    if (_themeMode == ThemeMode.light) {
      return _lightTheme;
    }
    return _darkTheme;
  }
}
