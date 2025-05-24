library modern_themes;

import 'package:flutter/cupertino.dart' show NoDefaultCupertinoThemeData;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:modern_themes/modern_themes_comps.dart';

/// Contains all Themes of the modern_themes Package.
/// Contains the default Themes and setter for individual Themes.
class Themes {
  /// The current Theme Mode used in the App.
  /// Possible values are:
  /// [ThemeMode.system] : adapt to the System Preferences
  /// [ThemeMode.light] : Use the light Theme. For example
  /// [lightTheme] or [defaultLightTheme]
  /// [ThemeMode.dark] : Use the dark Theme.
  /// For example [darkTheme] or [defaultDarkTheme]
  /// The High Contrast Theme is automatically used, when you
  /// have activated the High Contrast Mode in you device
  /// Settings.
  static ThemeMode? _themeMode;

  /// Getter for the ThemeMode. iF the ThemeMode is not set,
  /// [ThemeMode.system] is returned as a default Value.
  /// Otherwise, the theme Mode the User set with the corresponding
  /// themeMode getter, is returned.
  static ThemeMode get themeMode => _themeMode ?? ThemeMode.system;

  /// Changes the ThemeMode Variable to the new
  /// Theme.
  static void changeTheme(ThemeMode theme) {
    _themeMode = theme;
  }

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
        focusColor: Coloring.focusedBorderSideColor,
        dividerColor: Coloring.dividerColor,
        disabledColor: Coloring.disabledColor,
        scaffoldBackgroundColor: Coloring.lightBackgroundColor,
        shadowColor: Colors.black87,
        primaryColorDark: Coloring.mainColor,
        primaryColorLight: Coloring.mainColor,
        dialogBackgroundColor: Colors.white,
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
          focusColor: Coloring.mainColor,
        ),

        // Text Button Theme
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(
              Coloring.secondaryColor,
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
              Coloring.mainColor,
            ),
            alignment: Alignment.center,
            enableFeedback: true,
            side: WidgetStateProperty.all<BorderSide>(
              BorderValues.buttonBorderSide,
            ),
            tapTargetSize: MaterialTapTargetSize.padded,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),

        // Toggle Buttons Theme
        toggleButtonsTheme: const ToggleButtonsThemeData(),

        // Elevated Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(
              Coloring.secondaryColor,
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
              Coloring.mainColor,
            ),
            alignment: Alignment.center,
            enableFeedback: true,
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                side: BorderValues.buttonBorderSide,
              ),
            ),
            side: WidgetStateProperty.all<BorderSide>(
              BorderValues.buttonBorderSide,
            ),
          ),
        ),

        // Outline Button Theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(
              Coloring.secondaryColor,
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
              Coloring.mainColor,
            ),
            alignment: Alignment.center,
            enableFeedback: true,
            tapTargetSize: MaterialTapTargetSize.padded,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),

        /// Floating Action Button Theme
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Coloring.mainColor,
          elevation: 15,
          disabledElevation: 5,
          enableFeedback: true,
          focusColor: Coloring.mainColor.withOpacity(0.4),
          focusElevation: 17,
          foregroundColor: Coloring.secondaryColor,
          hoverElevation: 17,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            side: BorderSide(
              color: Coloring.mainColor,
              style: BorderStyle.solid,
              width: 0.25,
            ),
          ),
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
        ),

        // Divider Theme
        dividerTheme: const DividerThemeData(
          color: Coloring.dividerColor,
          thickness: NumberValues.dividerThickness,
        ),

        /* AppBar Themes */
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 5.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: BrightnessValues.statusBarBrightness,
            statusBarColor: Coloring.mainColor,
            statusBarIconBrightness: BrightnessValues.statusBarBrightness,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness:
                BrightnessValues.statusBarBrightness,
            systemNavigationBarDividerColor: Colors.red,
          ),
          backgroundColor: Coloring.mainColor,
          iconTheme: IconThemes.iconTheme,
          actionsIconTheme: IconThemes.iconTheme,
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

        // Bottom AppBar Theme
        bottomAppBarTheme: const BottomAppBarTheme(),

        // Bottom Navigation Bar Theme
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 10.0,
          enableFeedback: true,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          selectedIconTheme: IconThemes.iconTheme,
          unselectedIconTheme: IconThemes.iconTheme,
          backgroundColor: Coloring.mainColor,
          selectedItemColor: Coloring.secondaryColor,
          unselectedItemColor: Coloring.secondaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          mouseCursor: WidgetStateProperty.resolveWith(
            ((states) => _bottomNavigationBarMouseCursor(states)),
          ),
        ),

        /* Radio Theme */
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all<Color>(Coloring.mainColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),

        /* List Tile Theme */
        listTileTheme: const ListTileThemeData(
          enableFeedback: true,
          style: ListTileStyle.list,
          dense: false,
          iconColor: Coloring.lightTextColor,
          textColor: Coloring.lightTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            side: BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 0.5,
            ),
          ),
          minLeadingWidth: 10,
          minVerticalPadding: 10,
        ),

        /* Icon Themes */
        iconTheme: IconThemes.lightIconTheme,
        primaryIconTheme: IconThemes.lightIconTheme,

        /* Checkbox Theme */
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all<Color>(Colors.white),
          fillColor: WidgetStateProperty.all<Color>(Coloring.mainColor),
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
        dialogTheme: DialogThemeData(
          alignment: Alignment.center,
          backgroundColor: Colors.white,
          elevation: 25.0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(
              color: Coloring.mainColor,
              style: BorderStyle.solid,
              width: 0.1,
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
          trackVisibility: WidgetStateProperty.all<bool>(true),
          interactive: true,
          thumbVisibility: WidgetStateProperty.all<bool>(false),
          radius: const Radius.circular(20),
        ),
      );

  /// The Default Dark Theme. The coolest Theme.
  /// If you wan't a cool Theme, that is different from the
  /// Standard Flutter Theme, but you don't want to
  /// make your own Theme, or you don't know how to, use this Theme.
  static ThemeData get defaultDarkTheme => ThemeData(
        // General Values
        useMaterial3: true,
        brightness: Brightness.dark,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.grey.shade800,
          primaryColor: Coloring.mainColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // Colors
        primaryColor: Coloring.mainColor,
        colorScheme: Coloring.darkColorScheme,
        focusColor: Coloring.focusedBorderSideColor,
        dividerColor: Coloring.dividerColor,
        disabledColor: Coloring.disabledColor,
        scaffoldBackgroundColor: Coloring.darkBackgroundColor,
        shadowColor: Colors.black87,
        primaryColorDark: Coloring.mainColor,
        primaryColorLight: Coloring.mainColor,
        dialogBackgroundColor: Colors.grey.shade800,

        /* Button Themes */
        buttonTheme: ButtonThemeData(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          alignedDropdown: false,
          buttonColor: Coloring.mainColor,
          disabledColor: Coloring.disabledColor,
          colorScheme: Coloring.darkColorScheme,
          layoutBehavior: ButtonBarLayoutBehavior.padded,
          textTheme: ButtonTextTheme.normal,
          focusColor: Coloring.mainColor,
        ),

        // Text Button Theme
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(
              Coloring.secondaryColor,
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
              Coloring.mainColor,
            ),
            alignment: Alignment.center,
            enableFeedback: true,
            side: WidgetStateProperty.all<BorderSide>(
              BorderValues.buttonBorderSide,
            ),
            tapTargetSize: MaterialTapTargetSize.padded,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),

        // Toggle Buttons Theme
        toggleButtonsTheme: const ToggleButtonsThemeData(),

        // Elevated Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: WidgetStateProperty.all<Color>(
              Coloring.mainColor,
            ),
            enableFeedback: true,
            foregroundColor: WidgetStateProperty.all<Color>(
              Coloring.secondaryColor,
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                side: BorderValues.buttonBorderSide,
              ),
            ),
            side: WidgetStateProperty.all<BorderSide>(
              BorderValues.buttonBorderSide,
            ),
          ),
        ),

        // Outline Button Theme
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                WidgetStateProperty.all<Color>(Coloring.secondaryColor),
            backgroundColor: WidgetStateProperty.all<Color>(Coloring.mainColor),
            alignment: Alignment.center,
            enableFeedback: true,
            tapTargetSize: MaterialTapTargetSize.padded,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),

        /// Floating Action Button Theme
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Coloring.mainColor,
          elevation: 15,
          disabledElevation: 5,
          enableFeedback: true,
          focusColor: Coloring.mainColor.withOpacity(0.4),
          focusElevation: 17,
          foregroundColor: Coloring.secondaryColor,
          hoverElevation: 17,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            side: BorderSide(
              color: Coloring.mainColor,
              style: BorderStyle.solid,
              width: 0.25,
            ),
          ),
        ),

        // Input Decoration Theme
        inputDecorationTheme: InputDecorationTheme(
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
        ),

        // Divider Theme
        dividerTheme: const DividerThemeData(
          color: Coloring.dividerColor,
          thickness: NumberValues.dividerThickness,
        ),

        /* AppBar Themes */
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 5.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: BrightnessValues.statusBarBrightness,
            statusBarColor: Coloring.mainColor,
            statusBarIconBrightness: BrightnessValues.statusBarBrightness,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness:
                BrightnessValues.statusBarBrightness,
            systemNavigationBarDividerColor: Colors.red,
          ),
          backgroundColor: Coloring.mainColor,
          iconTheme: IconThemes.iconTheme,
          actionsIconTheme: IconThemes.iconTheme,
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

        // Bottom AppBar Theme
        bottomAppBarTheme: const BottomAppBarTheme(),

        // Bottom Navigation Bar Theme
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 10.0,
          enableFeedback: true,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          backgroundColor: Coloring.mainColor,
          selectedIconTheme: IconThemes.iconTheme,
          unselectedIconTheme: IconThemes.iconTheme,
          selectedItemColor: Coloring.secondaryColor,
          unselectedItemColor: Coloring.secondaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          mouseCursor: WidgetStateProperty.resolveWith(
            ((states) => _bottomNavigationBarMouseCursor(states)),
          ),
        ),

        /* Radio Theme */
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all<Color>(Coloring.mainColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),

        /* List Tile Theme */
        listTileTheme: ListTileThemeData(
          enableFeedback: true,
          style: ListTileStyle.list,
          dense: false,
          iconColor: Coloring.darkTextColor,
          textColor: Coloring.darkTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            side: BorderSide(
              color: Coloring.darkBackgroundColor,
              style: BorderStyle.solid,
              width: 0.5,
            ),
          ),
          minLeadingWidth: 10,
          minVerticalPadding: 10,
        ),

        /* Icon Themes */
        iconTheme: IconThemes.darkIconTheme,
        primaryIconTheme: IconThemes.darkIconTheme,

        /* Checkbox Theme */
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all<Color>(Coloring.secondaryColor),
          fillColor: WidgetStateProperty.all<Color>(Coloring.mainColor),
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
          modalBackgroundColor: Colors.grey.shade800,
          modalElevation: 10.0,
          backgroundColor: Colors.grey.shade800,
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
        dialogTheme: DialogThemeData(
          alignment: Alignment.center,
          backgroundColor: Colors.grey.shade800,
          elevation: 25.0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(
              color: Coloring.mainColor,
              style: BorderStyle.solid,
              width: 0.1,
            ),
          ),
        ),

        /* Text Theme */
        textTheme: TextValues.darkTextTheme,

        /* Progress Indicator Theme */
        progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: Coloring.darkBackgroundColor,
          color: Coloring.mainColor,
          refreshBackgroundColor: Coloring.darkBackgroundColor,
        ),

        /* Drawer Theme */
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.grey.shade900,
          elevation: 7.0,
        ),

        /* Typography */
        typography: Typography.material2021(),

        /* Scrollbar Theme */
        scrollbarTheme: ScrollbarThemeData(
          trackVisibility: WidgetStateProperty.all<bool>(true),
          interactive: true,
          thumbVisibility: WidgetStateProperty.all<bool>(false),
          radius: const Radius.circular(20),
        ),
      );

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
  /// light Theme will be returned. If you haven't set a light Theme,
  /// de [defaultLightTheme] will be returned
  static ThemeData get lightTheme => _lightTheme ?? defaultLightTheme;

  /// Dark Theme. The coolest Theme (if you're Batman).
  /// If you set the dark Theme with the Setter, your individual
  /// dark Theme will be returned. If you haven't set a dark Theme,
  /// de [defaultDarkTheme] will be returned
  static ThemeData get darkTheme => _darkTheme ?? defaultDarkTheme;

  /// The high contrast Version of the [lightTheme]
  /// If you set the high Contrast light Theme with the Setter, your individual
  /// high Contrast Version of the light Theme will be returned.
  /// If you haven't set a this Version of the light Theme,
  /// de [defaultHighContrastLightTheme] will be returned
  static ThemeData get highContrastLightTheme =>
      _highContrastLightTheme ?? defaultHighContrastLightTheme;

  /// The high contrast Version of the [darkTheme]
  /// If you set the high Contrast dark Theme with the Setter, your individual
  /// high Contrast Version of the dark Theme will be returned.
  /// If you haven't set a this Version of the dark Theme,
  /// de [defaultHighContrastDarkTheme] will be returned
  static ThemeData get highContrastDarkTheme =>
      _highContrastDarkTheme ?? defaultHighContrastDarkTheme;

  /// Returns the Mouse Cursor for the Bottom Navigation Bar
  /// in the light Mode, depending on the Material State
  static MouseCursor _bottomNavigationBarMouseCursor(Set<WidgetState> states) {
    const localStates = <WidgetState>{
      WidgetState.focused,
      WidgetState.hovered,
      WidgetState.pressed,
    };
    if (states.any(localStates.contains)) {
      return SystemMouseCursors.click;
    }
    return SystemMouseCursors.basic;
  }
}