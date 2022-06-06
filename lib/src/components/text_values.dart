library modern_themes;

import 'package:flutter/material.dart' show Colors, TextStyle, TextOverflow;
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
}
