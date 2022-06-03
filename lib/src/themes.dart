library modern_themes;

import 'package:flutter/cupertino.dart' show NoDefaultCupertinoThemeData;
import 'package:flutter/material.dart';
import 'package:modern_themes/src/values/coloring.dart' show Coloring;
import 'package:modern_themes/src/values/number_values.dart';

/// Contains all Themes of the modern_themes Package.
/// Contains the default Themes and setter for individual Themes.
class Themes {
  /// Light Theme the user can set
  static ThemeData? _lightTheme;

  /// Dark Theme the user can set
  static ThemeData? _darkTheme;

  /// High Contrast Light Theme the user can set
  static ThemeData? _highContrastLightTheme;

  // High Contrast Dark Theme the user can set
  static ThemeData? _highContrastDarkTheme;

  /* Border Sides */
  /// Border Side that is used for the Buttons in the Light Theme
  static const BorderSide _lightButtonBorderSide = BorderSide(
    color: Coloring.lightBorderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.lightBorderSideWidth,
  );

  /// The Default Light Theme. The Most used Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultLightTheme {
    return ThemeData(
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
        color: Coloring.lightDividerColor,
        thickness: 1.0,
      ),
    );
  }

  /// The Default Dark Theme. The coolest Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultDarkTheme {
    return ThemeData();
  }

  /// The High Contrast Version of the Default Light Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultHighContrastLightTheme {
    return ThemeData();
  }

  /// The High Contrast Version of the Default Dark Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultHighContrastDarkTheme {
    return ThemeData();
  }

  /// Set the light Theme. Pass a [ThemeData] and set you individual
  /// Version of the light Theme.
  /// You can get it with the getter of [lightTheme].
  /// Don't use [defaultLightTheme] if you wan't you own Theme to be used.
  static set lightTheme(ThemeData theme) {
    _lightTheme = theme;
  }

  /// Set the Dark Theme. Pass a [ThemeData] and set you individual
  /// Version of the dark Theme.
  /// You can get it with the getter of [darkTheme].
  /// Don't use [defaultDarkTheme] if you wan't you own Theme to be used.
  static set darkTheme(ThemeData theme) {
    _darkTheme = theme;
  }

  /// Set the High Contrast Version of the light Theme.
  /// Pass a [ThemeData] and set you individual
  /// Version of the light Theme.
  /// You can get it with the getter of [highContrastLightTheme].
  /// Don't use [defaultHighContrastLightTheme] if you wan't you own Theme to be used.
  static set highContrastLightTheme(ThemeData theme) {
    _highContrastLightTheme = theme;
  }

  /// Set the High Contrast Version of the Dark Theme.
  /// Pass a [ThemeData] and set you individual
  /// Version of the light Theme.
  /// You can get it with the getter of [highContrastDarkTheme].
  /// Don't use [defaultHighContrastDarkTheme] if you wan't you own Theme to be used.
  static set highContrastDarkTheme(ThemeData theme) {
    _highContrastDarkTheme = theme;
  }

  /// Light Theme. The most used Theme.
  /// If you set the light Theme with the Setter, your individual
  /// light Theme will be returned. If you havn't set a light Theme,
  /// de [defaultLightTheme] will be returned
  static ThemeData get lightTheme {
    return _lightTheme ?? defaultLightTheme;
  }

  /// Dark Theme. The coolest Theme (if you're Batman).
  /// If you set the dark Theme with the Setter, your individual
  /// dark Theme will be returned. If you havn't set a dark Theme,
  /// de [defaultDarkTheme] will be returned
  static ThemeData get darkTheme {
    return _darkTheme ?? defaultDarkTheme;
  }

  /// The high contrast Version of the [lightTheme]
  /// If you set the high Contrast light Theme with the Setter, your individual
  /// high Contrast Version of the light Theme will be returned.
  /// If you havn't set a this Version of the light Theme,
  /// de [defaultHighContrastLightTheme] will be returned
  static ThemeData get highContrastLightTheme {
    return _highContrastLightTheme ?? defaultHighContrastLightTheme;
  }

  /// The high contrast Version of the [darkTheme]
  /// If you set the high Contrast dark Theme with the Setter, your individual
  /// high Contrast Version of the dark Theme will be returned.
  /// If you havn't set a this Version of the dark Theme,
  /// de [defaultHighContrastDarkTheme] will be returned
  static ThemeData get highContrastDarkTheme {
    return _highContrastDarkTheme ?? defaultHighContrastDarkTheme;
  }
}
