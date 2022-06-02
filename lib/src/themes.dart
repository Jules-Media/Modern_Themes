library modern_themes;

import 'package:flutter/cupertino.dart' show NoDefaultCupertinoThemeData;
import 'package:flutter/material.dart';

/// Contains all Themes of the modern_themes Package.
/// Contains the default Themes and setter for individual Themes.
class Themes {
  /* Colors */
  /// Color for the Divider used in Light Themes
  static final Color _lightDividerColor = Color(Colors.grey.value);

  /* Border Sides */
  /// Border Side that is used for the Buttons in the Light Theme
  static const BorderSide _lightButtonBorderSide = BorderSide();

  static ThemeData defaultLightTheme = ThemeData(
    // General Values
    useMaterial3: true,
    brightness: Brightness.light,
    materialTapTargetSize: MaterialTapTargetSize.padded,
    cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(),
    visualDensity: VisualDensity.adaptivePlatformDensity,

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
        side: MaterialStateProperty.all<BorderSide>(_lightButtonBorderSide),
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
            side: _lightButtonBorderSide,
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(_lightButtonBorderSide),
      ),
    ),

    // Outline Button Theme
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(),
    ),

    /// Floating Action Button Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      enableFeedback: true,
      shape: CircleBorder(side: _lightButtonBorderSide),
    ),

    // Input Decoration Theme
    inputDecorationTheme: const InputDecorationTheme(
      alignLabelWithHint: true,
      filled: false,
      floatingLabelAlignment: FloatingLabelAlignment.center,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      helperMaxLines: 2,
      isCollapsed: false,
      isDense: false,
    ),

    // Divider Theme
    dividerTheme: DividerThemeData(
      color: _lightDividerColor,
      thickness: 1.0,
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
