library modern_themes;

import 'package:flutter/material.dart'
    show Colors, TextBaseline, TextStyle, TextTheme, TextOverflow;
import 'coloring.dart';

/// This Class contains everything that influences Texts,
/// TextStyles and Colors etc...
class TextValues {
  /// TextStyle for Error Text
  static final TextStyle errorStyle = TextStyle(
    color: Coloring.lightErrorColor,
    backgroundColor: Colors.transparent,
    overflow: TextOverflow.fade,
  );

  /// Text Style used for the Label in Input Fields.
  static const TextStyle lightInputLabelStyle = TextStyle(
    color: Coloring.lightBorderSideColor,
    backgroundColor: Colors.transparent,
    overflow: TextOverflow.fade,
  );

  /// Text Style used for the Label in Input Fiels.
  /// Only used when the Label is floating above.
  static final TextStyle lightInputFloatingLabelStyle = TextStyle(
    color: Coloring.lightFocusedBorderSideColor,
    backgroundColor: Colors.transparent,
    overflow: TextOverflow.fade,
  );

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
}
