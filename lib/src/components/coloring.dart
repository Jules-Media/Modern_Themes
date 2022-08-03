library modern_themes;

import 'package:flutter/material.dart'
    show Color, Colors, ColorScheme, Brightness;
import 'package:helpful_extensions/helpful_extensions.dart' show ColorMapping;

/// Class that contains everything that
/// is related to Colors.
/// Internal Class Only
class Coloring {
  /* General Values */
  /// The Main Color of the App
  static Color _mainColor = Colors.blue;

  /// Changes the Main Color
  /// and with it the Secondary Color depending
  /// on the State (light Or Dark) of the [color]
  static void changeColor(Color color) {
    _mainColor = color;

    if (color.isDark()) {
      _secondaryColor = Colors.white;
    } else {
      _secondaryColor = Colors.black;
    }
  }

  /// Getter for the main Color.
  static Color get mainColor => _mainColor;

  /// Secondary Color.
  /// Is used in Texts and sometimes Shapes.
  /// Depends on the Main Color.
  static Color _secondaryColor = Colors.white;

  /// The secondary Color of the App.
  static Color get secondaryColor => _secondaryColor;

  /// Color for diabled Elements.
  static final Color disabledColor = Colors.grey.shade400;

  /* Light Values */

  /// Text Color for the light Theme
  static const Color lightTextColor = Colors.black;

  /// The Background Color for Scaffold and other
  /// Material Components used in this App.
  /// Used in light Themes.
  static const Color lightBackgroundColor = Colors.white;

  /// Color Scheme for the light Theme
  static final ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: _mainColor,
    onPrimary: lightTextColor,
    secondary: _secondaryColor,
    onSecondary: lightTextColor,
    error: lightErrorColor,
    onError: lightTextColor,
    background: lightBackgroundColor,
    onBackground: lightTextColor,
    surface: _mainColor,
    onSurface: _secondaryColor,
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

  /// Color used for shadows in the light Themes.
  static final Color lightShadowColor = Colors.grey.shade900;
}
