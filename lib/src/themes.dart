library modern_themes;

import 'package:flutter/cupertino.dart' show NoDefaultCupertinoThemeData;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:helpful_extensions/helpful_extensions.dart' show ColorMapping;
import 'components/border_values.dart';
import 'components/coloring.dart';
import 'components/number_values.dart';
import 'components/text_values.dart';

/// Contains all Themes of the modern_themes Package.
/// Contains the default Themes and setter for individual Themes.
class Themes {
  /// Light Theme the user can set
  static ThemeData? _lightTheme;

  /// Dark Theme the user can set
  static ThemeData? _darkTheme;

  /// High Contrast Light Theme the user can set
  static ThemeData? _highContrastLightTheme;

  // High Contrast Dark Theme the user can set
  static ThemeData? _highContrastDarkTheme;

  /// The Default Light Theme. The Most used Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultLightTheme => ThemeData(
        // General Values
        useMaterial3: true,
        brightness: Brightness.light,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Coloring.mainColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // Colors
        primaryColor: Coloring.mainColor,
        colorScheme: Coloring.lightColorScheme,
        focusColor: Coloring.lightFocusedBorderSideColor,
        dividerColor: Coloring.lightDividerColor,
        disabledColor: Coloring.disabledColor,
        scaffoldBackgroundColor: Coloring.lightBackgroundColor,
        errorColor: Coloring.lightErrorColor,
        shadowColor: Colors.black87,
        primaryColorDark: Coloring.mainColor,
        primaryColorLight: Coloring.mainColor,
        backgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,
        bottomAppBarColor: Coloring.mainColor,
        indicatorColor: Coloring.mainColor,

        /* Button Themes */
        buttonTheme: ButtonThemeData(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          alignedDropdown: false,
          buttonColor: Coloring.mainColor,
          disabledColor: Coloring.disabledColor,
          colorScheme: Coloring.lightColorScheme,
          layoutBehavior: ButtonBarLayoutBehavior.padded,
          textTheme: ButtonTextTheme.normal,
        ),

        // Text Button Theme
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            enableFeedback: true,
            side: MaterialStateProperty.all<BorderSide>(
              BorderValues.lightBorderSide,
            ),
            tapTargetSize: MaterialTapTargetSize.padded,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),

        // Toogle Buttons Theme
        toggleButtonsTheme: const ToggleButtonsThemeData(),

        // Elevated Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            enableFeedback: true,
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                side: BorderValues.lightBorderSide,
              ),
            ),
            side: MaterialStateProperty.all<BorderSide>(
              BorderValues.lightBorderSide,
            ),
          ),
        ),

        // Outline Button Theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            enableFeedback: true,
            tapTargetSize: MaterialTapTargetSize.padded,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),

        /// Floating Action Button Theme
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          enableFeedback: true,
          shape: CircleBorder(side: BorderValues.lightBorderSide),
        ),

        // Input Decoration Theme
        inputDecorationTheme: InputDecorationTheme(
          alignLabelWithHint: true,
          filled: false,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: TextValues.lightInputLabelStyle,
          floatingLabelStyle: TextValues.lightInputFloatingLabelStyle,
          helperMaxLines: 2,
          isCollapsed: false,
          isDense: false,
          border: const OutlineInputBorder(
            borderRadius: BorderValues.inputBorderRadius,
            borderSide: BorderValues.lightBorderSide,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderValues.inputBorderRadius,
            borderSide: BorderValues.lightBorderSide,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderValues.inputBorderRadius,
            borderSide: BorderValues.lightErrorBorderSide,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderValues.inputBorderRadius,
            borderSide: BorderValues.lightFocusedBorderSide,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderValues.inputBorderRadius,
            borderSide: BorderValues.lightErrorBorderSide,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderValues.inputBorderRadius,
            borderSide: BorderValues.lightDisabledBorderSide,
          ),
          errorMaxLines: 10,
          errorStyle: TextValues.errorStyle,
          fillColor: Coloring.fillColor,
        ),

        // Divider Theme
        dividerTheme: const DividerThemeData(
          color: Coloring.lightDividerColor,
          thickness: NumberValues.dividerThickness,
        ),

        /* AppBar Theme */
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 5.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Coloring.mainColor.isLight()
                ? Brightness.dark
                : Brightness.light,
            statusBarColor: Coloring.mainColor,
            statusBarIconBrightness: Coloring.mainColor.isLight()
                ? Brightness.dark
                : Brightness.light,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Coloring.mainColor.isLight()
                ? Brightness.dark
                : Brightness.light,
            systemNavigationBarDividerColor: Colors.red,
          ),
          backgroundColor: Coloring.mainColor,
          iconTheme: IconThemeData(
            color: Coloring.secondaryColor,
            opacity: 1.0,
          ),
          actionsIconTheme: IconThemeData(
            opacity: 1.0,
            color: Coloring.secondaryColor,
          ),
          shadowColor: Colors.black87,
          foregroundColor: Coloring.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(33),
              bottomRight: Radius.circular(33),
            ),
            side: BorderSide(
              color: Coloring.mainColor.withAlpha(50),
              style: BorderStyle.solid,
              width: 1.0,
            ),
          ),
        ),

        /* Radio Theme */
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all<Color>(Coloring.mainColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),

        /* List Tile Theme */
        listTileTheme: ListTileThemeData(
          enableFeedback: true,
          style: ListTileStyle.list,
          dense: false,
          iconColor: Colors.black,
          textColor: Colors.black,
          tileColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            side: BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 0.5,
            ),
          ),
          selectedColor: Colors.black,
          selectedTileColor: Coloring.mainColor.withAlpha(70),
          minLeadingWidth: 10,
          minVerticalPadding: 10,
        ),

        /* Icon Themes */
        iconTheme: const IconThemeData(
          color: Colors.black,
          opacity: 1.0,
        ),
        primaryIconTheme: const IconThemeData(
          color: Colors.black,
          opacity: 1.0,
        ),

        /* Checkbox Theme */
        checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.all<Color>(Colors.white),
          fillColor: MaterialStateProperty.all<Color>(Coloring.mainColor),
          materialTapTargetSize: MaterialTapTargetSize.padded,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          side: BorderSide(
            color: Coloring.mainColor,
            style: BorderStyle.solid,
            width: 0.7,
          ),
        ),

        /* Switch Theme Data */
        switchTheme: const SwitchThemeData(
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),

        /* Bottom Sheet Theme */
        bottomSheetTheme: BottomSheetThemeData(
          modalBackgroundColor: Colors.white,
          modalElevation: 10.0,
          backgroundColor: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            side: BorderSide(
              color: Coloring.mainColor,
              style: BorderStyle.solid,
              width: 0.2,
            ),
          ),
        ),

        /* Dialog Theme */
        dialogTheme: const DialogTheme(
          alignment: Alignment.center,
          backgroundColor: Colors.white,
          elevation: 20.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),

        /* Text Theme */
        textTheme: TextValues.lightTextTheme,

        /* Progress Indicator Theme */
        progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: Colors.white,
          color: Coloring.mainColor,
          refreshBackgroundColor: Colors.white,
        ),

        /* Drawer Theme */
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white70,
          elevation: 7.0,
        ),

        /* Typography */
        typography: Typography.material2021(),

        /* Scrollbar Theme */
        scrollbarTheme: ScrollbarThemeData(
          trackVisibility: MaterialStateProperty.all<bool>(true),
          interactive: true,
          thumbVisibility: MaterialStateProperty.all<bool>(false),
        ),
      );

  /// The Default Dark Theme. The coolest Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultDarkTheme => ThemeData();

  /// The High Contrast Version of the Default Light Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultHighContrastLightTheme => ThemeData();

  /// The High Contrast Version of the Default Dark Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultHighContrastDarkTheme => ThemeData();

  /// Set the light Theme. Pass a [ThemeData] and set you individual
  /// Version of the light Theme.
  /// You can get it with the getter of [lightTheme].
  /// Don't use [defaultLightTheme] if you wan't you own Theme to be used.
  static set lightTheme(ThemeData theme) => _lightTheme = theme;

  /// Set the Dark Theme. Pass a [ThemeData] and set you individual
  /// Version of the dark Theme.
  /// You can get it with the getter of [darkTheme].
  /// Don't use [defaultDarkTheme] if you wan't you own Theme to be used.
  static set darkTheme(ThemeData theme) => _darkTheme = theme;

  /// Set the High Contrast Version of the light Theme.
  /// Pass a [ThemeData] and set you individual
  /// Version of the light Theme.
  /// You can get it with the getter of [highContrastLightTheme].
  /// Don't use [defaultHighContrastLightTheme] if you wan't you own Theme to be used.
  static set highContrastLightTheme(ThemeData theme) =>
      _highContrastLightTheme = theme;

  /// Set the High Contrast Version of the Dark Theme.
  /// Pass a [ThemeData] and set you individual
  /// Version of the light Theme.
  /// You can get it with the getter of [highContrastDarkTheme].
  /// Don't use [defaultHighContrastDarkTheme] if you wan't you own Theme to be used.
  static set highContrastDarkTheme(ThemeData theme) =>
      _highContrastDarkTheme = theme;

  /// Light Theme. The most used Theme.
  /// If you set the light Theme with the Setter, your individual
  /// light Theme will be returned. If you havn't set a light Theme,
  /// de [defaultLightTheme] will be returned
  static ThemeData get lightTheme => _lightTheme ?? defaultLightTheme;

  /// Dark Theme. The coolest Theme (if you're Batman).
  /// If you set the dark Theme with the Setter, your individual
  /// dark Theme will be returned. If you havn't set a dark Theme,
  /// de [defaultDarkTheme] will be returned
  static ThemeData get darkTheme => _darkTheme ?? defaultDarkTheme;

  /// The high contrast Version of the [lightTheme]
  /// If you set the high Contrast light Theme with the Setter, your individual
  /// high Contrast Version of the light Theme will be returned.
  /// If you havn't set a this Version of the light Theme,
  /// de [defaultHighContrastLightTheme] will be returned
  static ThemeData get highContrastLightTheme =>
      _highContrastLightTheme ?? defaultHighContrastLightTheme;

  /// The high contrast Version of the [darkTheme]
  /// If you set the high Contrast dark Theme with the Setter, your individual
  /// high Contrast Version of the dark Theme will be returned.
  /// If you havn't set a this Version of the dark Theme,
  /// de [defaultHighContrastDarkTheme] will be returned
  static ThemeData get highContrastDarkTheme =>
      _highContrastDarkTheme ?? defaultHighContrastDarkTheme;
}
