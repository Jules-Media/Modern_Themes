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

    if (color.isDark) {
      _secondaryColor = Colors.white;
    } else {
      _secondaryColor = Colors.black;
    }
  }

  /// returns the Contrast Color
  /// for the Color you put in.
  /// Currently only supports black
  /// and white.
  static contrastColor(Color forColor) {
    if (forColor == Colors.black) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  /// Returns the [_mainColor] as a [HSLColor].
  /// Used for lighten or darken a Color
  static HSLColor get _mainColorAsHSL {
    return HSLColor.fromColor(_mainColor);
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

  /// The Color used for Border Sides.
  static Color get borderSideColor => _mainColor;

  /// Color used for focused Objects.
  static Color get focusedBorderSideColor {
    final HSLColor output;
    if (_mainColorAsHSL.lightness > .5) {
      output = _mainColorAsHSL.withLightness(_mainColorAsHSL.lightness - .25);
    } else {
      output = _mainColorAsHSL.withLightness(_mainColorAsHSL.lightness + .25);
    }
    return output.toColor();
  }

  /* Light Values */

  /// Text Color for the light Theme
  static const Color lightTextColor = Colors.black;

  /// The Background Color for Scaffold and other
  /// Material Components used in this App.
  /// Used in light Themes.
  static const Color lightBackgroundColor = Colors.white;

  /// Color Scheme for the light Theme
  static ColorScheme get lightColorScheme {
    return ColorScheme(
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
  }

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
  static ColorScheme get darkColorScheme {
    return ColorScheme(
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
  }
}
