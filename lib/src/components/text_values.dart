library modern_themes;

import 'package:flutter/material.dart'
    show Colors, TextBaseline, TextStyle, TextTheme, TextOverflow;
import 'coloring.dart';

/// This Class contains everything that influences Texts,
/// TextStyles and Colors etc...
class TextValues {
  /// TextStyle for Error Text
  static final TextStyle errorStyle = TextStyle(
    color: Coloring.errorColor,
    backgroundColor: Colors.transparent,
    overflow: TextOverflow.fade,
  );

  /// Text Style used for the Label in Input Fields.
  static TextStyle get lightInputLabelStyle {
    return TextStyle(
      color: Coloring.borderSideColor,
      backgroundColor: Colors.transparent,
      overflow: TextOverflow.fade,
    );
  }

  /// Text Style used for the Label in Input Fields.
  static TextStyle get darkInputLabelStyle {
    return TextStyle(
      color: Coloring.borderSideColor,
      backgroundColor: Colors.transparent,
      overflow: TextOverflow.fade,
    );
  }

  /// Text Style used for the Label in Input Fiels.
  /// Only used when the Label is floating above.
  static TextStyle get lightInputFloatingLabelStyle {
    return TextStyle(
      color: Coloring.focusedBorderSideColor,
      backgroundColor: Colors.transparent,
      overflow: TextOverflow.fade,
    );
  }

  /// Text Style used for the Label in Input Fiels.
  /// Only used when the Label is floating above.
  static TextStyle get darkInputFloatingLabelStyle {
    return TextStyle(
      color: Coloring.focusedBorderSideColor,
      backgroundColor: Colors.transparent,
      overflow: TextOverflow.fade,
    );
  }

  /// Text Theme used in light Themes.
  static const TextTheme lightTextTheme = TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayLarge: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelLarge: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelSmall: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleSmall: TextStyle(
      color: Colors.black,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
  );

  /// Text Theme used in dark Themes.
  static const TextTheme darkTextTheme = TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineLarge: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelLarge: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelSmall: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      overflow: TextOverflow.fade,
      textBaseline: TextBaseline.alphabetic,
    ),
  );
}
