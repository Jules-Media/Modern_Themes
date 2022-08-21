library components;

import 'coloring.dart';

import 'package:flutter/material.dart' show Brightness;
import 'package:helpful_extensions/helpful_extensions.dart' show ColorMapping;

/// Collection of all Variables, Functions and
/// Getters concerning Brightness.
class BrightnessValues {
  /// Returns the Brightness of the Status Bar,
  /// depenfing on the [Coloring.mainColor]
  static Brightness get statusBarBrightness {
    if (Coloring.mainColor.isLight) {
      return Brightness.dark;
    } else {
      return Brightness.light;
    }
  }
}
