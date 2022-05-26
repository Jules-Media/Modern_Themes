library modern_themes;

import 'package:flutter/material.dart' show ThemeData;

class Themes {
  static ThemeData defaultLightTheme = ThemeData();

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
