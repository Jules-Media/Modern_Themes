library modern_themes;

import 'package:flutter/material.dart';

class Themes {
  static ThemeData defaultLightTheme = ThemeData(
    // General Values
    useMaterial3: true,
    brightness: Brightness.light,
    materialTapTargetSize: MaterialTapTargetSize.padded,

    // Colors

    /* Button Themes */
    buttonTheme: const ButtonThemeData(
      materialTapTargetSize: MaterialTapTargetSize.padded,
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        enableFeedback: true,
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: Colors.blue,
            style: BorderStyle.solid,
            width: 1.0,
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.padded,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),

    // Toogle Buttons Theme
    toggleButtonsTheme: const ToggleButtonsThemeData(),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        enableFeedback: true,
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            side: BorderSide(
              style: BorderStyle.solid,
              width: 1.0,
            ),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            style: BorderStyle.solid,
            width: 1.0,
          ),
        ),
      ),
    ),
  );

  static ThemeData defaultDarkTheme = ThemeData();

  static ThemeData defaultHighContrastLightTheme = ThemeData();

  static ThemeData defaultHighContrastDarkTheme = ThemeData();

  static set lightTheme(ThemeData theme) {}

  static set darkTheme(ThemeData theme) {}

  static set highContrastLightTheme(ThemeData theme) {}

  static set highContrastDarkTheme(ThemeData theme) {}

  static ThemeData get lightTheme {
    return ThemeData();
  }

  static ThemeData get darkTheme {
    return ThemeData();
  }

  static ThemeData get highContrastLightTheme {
    return ThemeData();
  }

  static ThemeData get highContrastDarkTheme {
    return ThemeData();
  }
}
