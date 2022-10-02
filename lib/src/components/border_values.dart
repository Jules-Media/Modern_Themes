library modern_themes;

import 'coloring.dart';
import 'number_values.dart';
import 'text_values.dart';

import 'package:flutter/material.dart';

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
  static BorderSide get buttonBorderSide {
    return BorderSide(
      color: Coloring.mainColor,
      style: BorderStyle.solid,
      width: NumberValues.borderSideWidth,
    );
  }

  /// Border Side that is used for the Buttons in the Light Theme
  static BorderSide get lightBorderSide {
    return BorderSide(
      color: Coloring.borderSideColor,
      style: BorderStyle.solid,
      width: NumberValues.borderSideWidth,
    );
  }

  /// Border Side used in light Theme for things that show an Error.
  static final BorderSide errorBorderSide = BorderSide(
    color: Coloring.errorColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side for focused Objects, used in Light Themes.
  static BorderSide get lightFocusedBorderSide {
    return BorderSide(
      color: Coloring.focusedBorderSideColor,
      style: BorderStyle.solid,
      width: NumberValues.borderSideWidth,
    );
  }

  /// Border Side for disabled Elements. Used in light Themes.
  static final BorderSide lightDisabledBorderSide = BorderSide(
    color: Coloring.disabledColor,
    style: BorderStyle.solid,
    width: NumberValues.borderSideWidth,
  );

  /// Border Side that is used for Buttons and TextFields in the Dark Themes.
  static BorderSide get darkBorderSide {
    return BorderSide(
      color: Coloring.borderSideColor,
      style: BorderStyle.solid,
      width: NumberValues.borderSideWidth,
    );
  }

  /// The Border Side for focused Borders in Dark Themes.
  static BorderSide get darkFocusedBoderSide {
    return BorderSide(
      color: Coloring.focusedBorderSideColor,
      style: BorderStyle.solid,
      width: NumberValues.borderSideWidth,
    );
  }

  /* Input Borders */

  /// The Input Decoration for light Themes, that uses
  /// [OutlineInputBorder] to display the Text Field.
  static InputDecorationTheme get lightOutlineInputDecoration {
    return InputDecorationTheme(
      alignLabelWithHint: true,
      filled: false,
      floatingLabelAlignment: FloatingLabelAlignment.center,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: TextValues.lightInputLabelStyle,
      floatingLabelStyle: TextValues.lightInputFloatingLabelStyle,
      helperMaxLines: 2,
      isCollapsed: false,
      isDense: false,
      border: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightBorderSide,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightBorderSide,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightFocusedBorderSide,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightDisabledBorderSide,
      ),
      errorMaxLines: 10,
      errorStyle: TextValues.errorStyle,
      fillColor: Coloring.fillColor,
    );
  }

  /// The Input Decoration for dark Themes, that uses
  /// [OutlineInputBorder] to display the Text Field.
  static InputDecorationTheme get darkOutlineInputDecoration {
    return InputDecorationTheme(
      alignLabelWithHint: true,
      filled: false,
      floatingLabelAlignment: FloatingLabelAlignment.center,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: TextValues.darkInputLabelStyle,
      floatingLabelStyle: TextValues.darkInputFloatingLabelStyle,
      helperMaxLines: 2,
      isCollapsed: false,
      isDense: false,
      border: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.darkBorderSide,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.darkBorderSide,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.darkFocusedBoderSide,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightDisabledBorderSide,
      ),
      errorMaxLines: 10,
      errorStyle: TextValues.errorStyle,
      fillColor: Coloring.fillColor,
    );
  }

  /// The Input Decoration for light Themes, that uses
  /// [UnderlineInputBorder] to display the Text Field.
  static InputDecorationTheme get lightUnderlineInputDecoration {
    return InputDecorationTheme(
      alignLabelWithHint: true,
      filled: false,
      floatingLabelAlignment: FloatingLabelAlignment.center,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: TextValues.lightInputLabelStyle,
      floatingLabelStyle: TextValues.lightInputFloatingLabelStyle,
      helperMaxLines: 2,
      isCollapsed: false,
      isDense: false,
      border: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightBorderSide,
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightBorderSide,
      ),
      errorBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightFocusedBorderSide,
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      disabledBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightDisabledBorderSide,
      ),
      errorMaxLines: 10,
      errorStyle: TextValues.errorStyle,
      fillColor: Coloring.fillColor,
    );
  }

  /// The Input Decoration for dark Themes, that uses
  /// [UnderlineInputBorder] to display the Text Field.
  static InputDecorationTheme get darkUnderlineInputDecoration {
    return InputDecorationTheme(
      alignLabelWithHint: true,
      filled: false,
      floatingLabelAlignment: FloatingLabelAlignment.center,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: TextValues.darkInputLabelStyle,
      floatingLabelStyle: TextValues.darkInputFloatingLabelStyle,
      helperMaxLines: 2,
      isCollapsed: false,
      isDense: false,
      border: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.darkBorderSide,
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.darkBorderSide,
      ),
      errorBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.darkFocusedBoderSide,
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.errorBorderSide,
      ),
      disabledBorder: UnderlineInputBorder(
        borderRadius: BorderValues.inputBorderRadius,
        borderSide: BorderValues.lightDisabledBorderSide,
      ),
      errorMaxLines: 10,
      errorStyle: TextValues.errorStyle,
      fillColor: Coloring.fillColor,
    );
  }
}
