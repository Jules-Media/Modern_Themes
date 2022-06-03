library modern_themes;

import 'package:flutter/material.dart'
    show BorderRadius, Radius, BorderSide, BorderStyle;
import 'coloring.dart';
import 'number_values.dart';

/// Class that holds all Values for the Borders.
class BorderValues {
  /* Border Radius */
  /// Border Radius for the Input Theme.
  /// Is used in every Theme.
  static const BorderRadius inputBorderRadius = BorderRadius.all(
    Radius.circular(20),
  );

  /* Border Sides */
  /// Border Side that is used for the Buttons in the Light Theme
  static const BorderSide lightBorderSide = BorderSide(
    color: Coloring.lightBorderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.lightBorderSideWidth,
  );

  /// Border Side used in light Theme for things that show an Error.
  static final BorderSide lightErrorBorderSide = BorderSide(
    color: Coloring.lightErrorColor,
    style: BorderStyle.solid,
    width: NumberValues.lightBorderSideWidth,
  );

  /// Border Side for focused Objects, used in Light Themes.
  static final BorderSide lightFocusedBorderSide = BorderSide(
    color: Coloring.lightFocusedBorderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.lightBorderSideWidth,
  );

  /// Border Side for disabled Elements. Used in light Themes.
  static final BorderSide lightDisabledBorderSide = BorderSide(
    color: Coloring.diabledColor,
    style: BorderStyle.solid,
    width: NumberValues.lightBorderSideWidth,
  );
}
