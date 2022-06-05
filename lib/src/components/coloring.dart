library modern_themes;

import 'package:flutter/material.dart'
    show Color, Colors, ColorScheme, Brightness;

/// Class that contains everything that
/// is related to Colors.
/// Internal Class Only
class Coloring {
  /* General Values */
  /// The Main Color of the App
  static Color mainColor = Colors.blue;

  /// The secondary Color of the App.
  static Color secondayColor = Colors.white;

  /// Color for diabled Elements.
  static final Color disabledColor = Colors.grey.shade400;

  /* Light Values */

  /// Text Color for the light Theme
  static const Color lightTextColor = Colors.black;

  static const Color lightBackgroundColor = Colors.white;

  /// Color Scheme for the light Theme
  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: mainColor,
    onPrimary: lightTextColor,
    secondary: secondayColor,
    onSecondary: lightTextColor,
    error: lightErrorColor,
    onError: lightTextColor,
    background: lightBackgroundColor,
    onBackground: lightTextColor,
    surface: mainColor,
    onSurface: secondayColor,
  );

  /// Color for the Divider used in Light Themes
  static const Color lightDividerColor = Colors.grey;

  /// The Color used for Border Sides in the Light Themes.
  static const Color lightBorderSideColor = Colors.cyan;

  /// Color used for focused Objects. Used in light Themes
  static final Color lightFocusedBorderSideColor = Colors.purple.shade400;

  /// The Colors used for everything that is an Error.
  /// Used in light Themes.
  static final Color lightErrorColor = Colors.red.shade800;

  /// The Color with which filled Elements will be filled.
  static const Color fillColor = Colors.transparent;
}
