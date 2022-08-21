import 'package:flutter/material.dart' show IconThemeData;
import 'package:modern_themes/modern_themes_comps.dart' show Coloring;

/// Class that contains all
/// Icon Themes
class IconThemes {
  /// Icon Theme for the all the normal Icons.
  static IconThemeData get iconTheme {
    return IconThemeData(
      color: Coloring.secondaryColor,
      opacity: 1.0,
    );
  }
}
