library modern_themes;

import 'package:flutter/material.dart' show Color, Colors, MaterialColor;

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
  static final Color diabledColor = Colors.grey.shade400;

  /* Light Values */
  /// Color for the Divider used in Light Themes
  static const MaterialColor lightDividerColor = Colors.grey;

  /// The Color used for Border Sides in the Light Themes.
  static const MaterialColor lightBorderSideColor = Colors.cyan;

  /// Color used for focused Objects. Used in light Themes
  static final Color lightFocusedBorderSideColor = Colors.purple.shade400;

  /// The Colors used for everything that is an Error.
  /// Used in light Themes.
  static final Color lightErrorColor = Colors.red.shade800;
}
