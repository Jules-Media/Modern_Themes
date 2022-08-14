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
    Radius.circular(30),
  );

  /* Border Sides */

  //7 The Border Side used for Buttons.
  static final BorderSide buttonBorderSide = BorderSide(
    color: Coloring.mainColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side that is used for the Buttons in the Light Theme
  static final BorderSide lightBorderSide = BorderSide(
    color: Coloring.borderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side used in light Theme for things that show an Error.
  static final BorderSide errorBorderSide = BorderSide(
    color: Coloring.errorColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side for focused Objects, used in Light Themes.
  static final BorderSide lightFocusedBorderSide = BorderSide(
    color: Coloring.focusedBorderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side for disabled Elements. Used in light Themes.
  static final BorderSide lightDisabledBorderSide = BorderSide(
    color: Coloring.disabledColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side that is used for Buttons and TextFields in the Dark Themes.
  static final BorderSide darkBorderSide = BorderSide(
    color: Coloring.borderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// The Border Side for focused Borders in Dark Themes.
  static final BorderSide darkFocusedBoderSide = BorderSide(
    color: Coloring.focusedBorderSideColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );
}
