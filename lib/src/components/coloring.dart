library modern_themes;

import 'package:flutter/material.dart'
    show Brightness, Color, Colors, ColorScheme, HSLColor;
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

  /// The Colors used for everything that is an Error.
  static final Color errorColor = Colors.red.shade800;

  /// Color for the Divider used in all Themes.
  static const Color dividerColor = Colors.grey;

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
    error: errorColor,
    onError: lightTextColor,
    background: lightBackgroundColor,
    onBackground: lightTextColor,
    surface: _mainColor,
    onSurface: _secondaryColor,
  );

  /// The Color used for Border Sides in the Light Themes.
  static final Color lightBorderSideColor = _mainColor;

  /// Color used for focused Objects. Used in light Themes
  static final Color lightFocusedBorderSideColor = _mainColor;

  /// The Color with which filled Elements will be filled.
  static const Color fillColor = Colors.transparent;

  /// Color used for shadows in the light Themes.
  static final Color lightShadowColor = Colors.grey.shade900;

  /* Dark Values */

  /// The Text Color in a Dark Theme
  static const Color darkTextColor = Colors.white;

  /// The Background Color for Screens in a Dark Theme.
  static final Color darkBackgroundColor = Colors.grey.shade800;

  /// The Color Scheme for Dark Themes.
  static final ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: _mainColor,
    onPrimary: darkTextColor,
    secondary: _secondaryColor,
    onSecondary: darkTextColor,
    error: errorColor,
    onError: darkTextColor,
    background: darkBackgroundColor,
    onBackground: darkTextColor,
    surface: _mainColor,
    onSurface: _secondaryColor,
  );

  /// Color used for focused Objects. Used in dark Themes
  static final Color darkFocusedBorderSideColor = _mainColor;

  /// The Border Side Color in dark Themes
  static final Color darkBorderSideColor = _mainColor;
}
