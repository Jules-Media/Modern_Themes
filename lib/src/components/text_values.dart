library modern_themes;

import 'package:flutter/material.dart' show Colors, TextStyle;
import 'coloring.dart';

/// This Class contains everything that influences Texts,
/// TextStyles and Colors etc...
class TextValues {
  /// TextStyle for Error Text
  static final TextStyle errorStyle = TextStyle(
    color: Coloring.lightErrorColor,
    backgroundColor: Colors.transparent,
  );
}
