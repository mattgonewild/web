import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

ThemeData _getDefaultLightTheme() {
  return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.light().copyWith(),
      primaryTextTheme: Typography.material2021(platform: TargetPlatform.linux)
          .black
          .copyWith());
}

ThemeData _getDefaultDarkTheme() {
  return ThemeData.dark(useMaterial3: true).copyWith(
      scaffoldBackgroundColor: Colors.black,
      canvasColor: const Color.fromRGBO(33, 37, 41, 1.0),
      colorScheme: const ColorScheme.dark().copyWith(),
      primaryTextTheme: Typography.material2021(platform: TargetPlatform.linux)
          .white
          .copyWith(
            displayLarge: const TextStyle(
              color: Color.fromRGBO(138, 180, 248, 1),
            ),
          ));
}

class ThemeManager {
  ThemeData _lightTheme = _getDefaultLightTheme();
  ThemeData _darkTheme = _getDefaultDarkTheme();

  ThemeMode _themeMode =
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.light
          ? ThemeMode.light
          : ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;
  bool get isDark => _themeMode == ThemeMode.dark;
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;

  void setLightFromJson({required Map<String, dynamic> json}) {}

  void setDarkFromJson({required Map<String, dynamic> json}) {}

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

  void resetThemes() {
    _lightTheme = _getDefaultLightTheme();
    _darkTheme = _getDefaultDarkTheme();
  }
}
