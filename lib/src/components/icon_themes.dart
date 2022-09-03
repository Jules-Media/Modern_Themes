library modern_themes;

import 'package:flutter/material.dart' show Colors, IconThemeData;
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

  /// The Icon Theme for light tThemes
  static const IconThemeData lightIconTheme = IconThemeData(
    color: Colors.black,
    opacity: 1.0,
  );

  /// The Icon Theme for dark tThemes
  static const IconThemeData darkIconTheme = IconThemeData(
    color: Colors.white,
    opacity: 1.0,
  );
}
