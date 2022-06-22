library modern_themes;

import 'components/border_values.dart';
import 'components/brightness_values.dart';
import 'components/coloring.dart';
import 'components/number_values.dart';
import 'components/text_values.dart';

import 'package:flutter/cupertino.dart' show NoDefaultCupertinoThemeData;
import 'package:flutter/foundation.dart'
    show DiagnosticPropertiesBuilder, DiagnosticsTreeStyle;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;

/// Contains all Themes of the modern_themes Package.
/// Contains the default Themes and setter for individual Themes.
class Themes {
  /// The current Theme Mode used in the App.
  /// Possible values are:
  /// [ThemeMode.system] : addapt to the System Preferences
  /// [ThemeMode.light] : Use the light Theme. For example
  /// [lightTheme] or [defaultLightTheme]
  /// [ThemeMode.dark] : Use the dark Theme.
  /// For example [darkTheme] or [defaultDarkTheme]
  /// The High Contrast Theme is automaticallly used, when you
  /// have activated the High Contrast Mode in you device
  /// Settings.
  static ThemeMode? _themeMode;

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
            statusBarBrightness: BrightnessValues.statusBarBrightness,
            statusBarColor: Coloring.mainColor,
            statusBarIconBrightness: BrightnessValues.statusBarBrightness,
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarIconBrightness:
                BrightnessValues.statusBarBrightness,
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

  /// Getter for the ThemeMode. iF the ThemeMode is not set,
  /// [ThemeMode.system] is reaturned as a defualt Value.
  /// Otherwise, the theme Mode the User set with the corresponding
  /// themeMode getter, is returned.
  static ThemeMode get themeMode => _themeMode ?? ThemeMode.system;

  /// Set the theme Mode of the Modern Themes Package.
  /// You can get it with [themeMode].
  /// Sets the internal varaible [_themeMode]
  static set themeMode(ThemeMode mode) => _themeMode = mode;
}

class _LightTheme implements ThemeData {
  @override
  // TODO: implement accentColor
  Color get accentColor => throw UnimplementedError();

  @override
  // TODO: implement accentColorBrightness
  Brightness get accentColorBrightness => throw UnimplementedError();

  @override
  // TODO: implement accentIconTheme
  IconThemeData get accentIconTheme => throw UnimplementedError();

  @override
  // TODO: implement accentTextTheme
  TextTheme get accentTextTheme => throw UnimplementedError();

  @override
  // TODO: implement androidOverscrollIndicator
  AndroidOverscrollIndicator? get androidOverscrollIndicator =>
      throw UnimplementedError();

  @override
  // TODO: implement appBarTheme
  AppBarTheme get appBarTheme => throw UnimplementedError();

  @override
  // TODO: implement applyElevationOverlayColor
  bool get applyElevationOverlayColor => throw UnimplementedError();

  @override
  // TODO: implement backgroundColor
  Color get backgroundColor => throw UnimplementedError();

  @override
  // TODO: implement bannerTheme
  MaterialBannerThemeData get bannerTheme => throw UnimplementedError();

  @override
  // TODO: implement bottomAppBarColor
  Color get bottomAppBarColor => throw UnimplementedError();

  @override
  // TODO: implement bottomAppBarTheme
  BottomAppBarTheme get bottomAppBarTheme => throw UnimplementedError();

  @override
  // TODO: implement bottomNavigationBarTheme
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      throw UnimplementedError();

  @override
  // TODO: implement bottomSheetTheme
  BottomSheetThemeData get bottomSheetTheme => throw UnimplementedError();

  @override
  // TODO: implement brightness
  Brightness get brightness => throw UnimplementedError();

  @override
  // TODO: implement buttonBarTheme
  ButtonBarThemeData get buttonBarTheme => throw UnimplementedError();

  @override
  // TODO: implement buttonColor
  Color get buttonColor => throw UnimplementedError();

  @override
  // TODO: implement buttonTheme
  ButtonThemeData get buttonTheme => throw UnimplementedError();

  @override
  // TODO: implement canvasColor
  Color get canvasColor => throw UnimplementedError();

  @override
  // TODO: implement cardColor
  Color get cardColor => throw UnimplementedError();

  @override
  // TODO: implement cardTheme
  CardTheme get cardTheme => throw UnimplementedError();

  @override
  // TODO: implement checkboxTheme
  CheckboxThemeData get checkboxTheme => throw UnimplementedError();

  @override
  // TODO: implement chipTheme
  ChipThemeData get chipTheme => throw UnimplementedError();

  @override
  // TODO: implement colorScheme
  ColorScheme get colorScheme => throw UnimplementedError();

  @override
  ThemeData copyWith(
      {bool? applyElevationOverlayColor,
      NoDefaultCupertinoThemeData? cupertinoOverrideTheme,
      Iterable<ThemeExtension>? extensions,
      InputDecorationTheme? inputDecorationTheme,
      MaterialTapTargetSize? materialTapTargetSize,
      PageTransitionsTheme? pageTransitionsTheme,
      TargetPlatform? platform,
      ScrollbarThemeData? scrollbarTheme,
      InteractiveInkFeatureFactory? splashFactory,
      VisualDensity? visualDensity,
      bool? useMaterial3,
      ColorScheme? colorScheme,
      Brightness? brightness,
      Color? primaryColor,
      Color? primaryColorLight,
      Color? primaryColorDark,
      Color? focusColor,
      Color? hoverColor,
      Color? shadowColor,
      Color? canvasColor,
      Color? scaffoldBackgroundColor,
      Color? bottomAppBarColor,
      Color? cardColor,
      Color? dividerColor,
      Color? highlightColor,
      Color? splashColor,
      Color? selectedRowColor,
      Color? unselectedWidgetColor,
      Color? disabledColor,
      Color? secondaryHeaderColor,
      Color? backgroundColor,
      Color? dialogBackgroundColor,
      Color? indicatorColor,
      Color? hintColor,
      Color? errorColor,
      Color? toggleableActiveColor,
      Typography? typography,
      TextTheme? textTheme,
      TextTheme? primaryTextTheme,
      IconThemeData? iconTheme,
      IconThemeData? primaryIconTheme,
      AppBarTheme? appBarTheme,
      MaterialBannerThemeData? bannerTheme,
      BottomAppBarTheme? bottomAppBarTheme,
      BottomNavigationBarThemeData? bottomNavigationBarTheme,
      BottomSheetThemeData? bottomSheetTheme,
      ButtonBarThemeData? buttonBarTheme,
      ButtonThemeData? buttonTheme,
      CardTheme? cardTheme,
      CheckboxThemeData? checkboxTheme,
      ChipThemeData? chipTheme,
      DataTableThemeData? dataTableTheme,
      DialogTheme? dialogTheme,
      DividerThemeData? dividerTheme,
      DrawerThemeData? drawerTheme,
      ElevatedButtonThemeData? elevatedButtonTheme,
      FloatingActionButtonThemeData? floatingActionButtonTheme,
      ListTileThemeData? listTileTheme,
      NavigationBarThemeData? navigationBarTheme,
      NavigationRailThemeData? navigationRailTheme,
      OutlinedButtonThemeData? outlinedButtonTheme,
      PopupMenuThemeData? popupMenuTheme,
      ProgressIndicatorThemeData? progressIndicatorTheme,
      RadioThemeData? radioTheme,
      SliderThemeData? sliderTheme,
      SnackBarThemeData? snackBarTheme,
      SwitchThemeData? switchTheme,
      TabBarTheme? tabBarTheme,
      TextButtonThemeData? textButtonTheme,
      TextSelectionThemeData? textSelectionTheme,
      TimePickerThemeData? timePickerTheme,
      ToggleButtonsThemeData? toggleButtonsTheme,
      TooltipThemeData? tooltipTheme,
      ExpansionTileThemeData? expansionTileTheme,
      bool? useTextSelectionTheme,
      Color? textSelectionColor,
      Color? cursorColor,
      Color? textSelectionHandleColor,
      Color? accentColor,
      Brightness? accentColorBrightness,
      TextTheme? accentTextTheme,
      IconThemeData? accentIconTheme,
      Color? buttonColor,
      bool? fixTextFieldOutlineLabel,
      Brightness? primaryColorBrightness,
      AndroidOverscrollIndicator? androidOverscrollIndicator}) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  // TODO: implement cupertinoOverrideTheme
  NoDefaultCupertinoThemeData? get cupertinoOverrideTheme =>
      throw UnimplementedError();

  @override
  // TODO: implement cursorColor
  Color get cursorColor => throw UnimplementedError();

  @override
  // TODO: implement dataTableTheme
  DataTableThemeData get dataTableTheme => throw UnimplementedError();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    // TODO: implement debugFillProperties
  }

  @override
  // TODO: implement dialogBackgroundColor
  Color get dialogBackgroundColor => throw UnimplementedError();

  @override
  // TODO: implement dialogTheme
  DialogTheme get dialogTheme => throw UnimplementedError();

  @override
  // TODO: implement disabledColor
  Color get disabledColor => throw UnimplementedError();

  @override
  // TODO: implement dividerColor
  Color get dividerColor => throw UnimplementedError();

  @override
  // TODO: implement dividerTheme
  DividerThemeData get dividerTheme => throw UnimplementedError();

  @override
  // TODO: implement drawerTheme
  DrawerThemeData get drawerTheme => throw UnimplementedError();

  @override
  // TODO: implement elevatedButtonTheme
  ElevatedButtonThemeData get elevatedButtonTheme => throw UnimplementedError();

  @override
  // TODO: implement errorColor
  Color get errorColor => throw UnimplementedError();

  @override
  // TODO: implement expansionTileTheme
  ExpansionTileThemeData get expansionTileTheme => throw UnimplementedError();

  @override
  T? extension<T>() {
    // TODO: implement extension
    throw UnimplementedError();
  }

  @override
  // TODO: implement extensions
  Map<Object, ThemeExtension> get extensions => throw UnimplementedError();

  @override
  // TODO: implement fixTextFieldOutlineLabel
  bool get fixTextFieldOutlineLabel => throw UnimplementedError();

  @override
  // TODO: implement floatingActionButtonTheme
  FloatingActionButtonThemeData get floatingActionButtonTheme =>
      throw UnimplementedError();

  @override
  // TODO: implement focusColor
  Color get focusColor => throw UnimplementedError();

  @override
  // TODO: implement highlightColor
  Color get highlightColor => throw UnimplementedError();

  @override
  // TODO: implement hintColor
  Color get hintColor => throw UnimplementedError();

  @override
  // TODO: implement hoverColor
  Color get hoverColor => throw UnimplementedError();

  @override
  // TODO: implement iconTheme
  IconThemeData get iconTheme => throw UnimplementedError();

  @override
  // TODO: implement indicatorColor
  Color get indicatorColor => throw UnimplementedError();

  @override
  // TODO: implement inputDecorationTheme
  InputDecorationTheme get inputDecorationTheme => throw UnimplementedError();

  @override
  // TODO: implement listTileTheme
  ListTileThemeData get listTileTheme => throw UnimplementedError();

  @override
  // TODO: implement materialTapTargetSize
  MaterialTapTargetSize get materialTapTargetSize => throw UnimplementedError();

  @override
  // TODO: implement navigationBarTheme
  NavigationBarThemeData get navigationBarTheme => throw UnimplementedError();

  @override
  // TODO: implement navigationRailTheme
  NavigationRailThemeData get navigationRailTheme => throw UnimplementedError();

  @override
  // TODO: implement outlinedButtonTheme
  OutlinedButtonThemeData get outlinedButtonTheme => throw UnimplementedError();

  @override
  // TODO: implement pageTransitionsTheme
  PageTransitionsTheme get pageTransitionsTheme => throw UnimplementedError();

  @override
  // TODO: implement platform
  TargetPlatform get platform => throw UnimplementedError();

  @override
  // TODO: implement popupMenuTheme
  PopupMenuThemeData get popupMenuTheme => throw UnimplementedError();

  @override
  // TODO: implement primaryColor
  Color get primaryColor => throw UnimplementedError();

  @override
  // TODO: implement primaryColorBrightness
  Brightness get primaryColorBrightness => throw UnimplementedError();

  @override
  // TODO: implement primaryColorDark
  Color get primaryColorDark => throw UnimplementedError();

  @override
  // TODO: implement primaryColorLight
  Color get primaryColorLight => throw UnimplementedError();

  @override
  // TODO: implement primaryIconTheme
  IconThemeData get primaryIconTheme => throw UnimplementedError();

  @override
  // TODO: implement primaryTextTheme
  TextTheme get primaryTextTheme => throw UnimplementedError();

  @override
  // TODO: implement progressIndicatorTheme
  ProgressIndicatorThemeData get progressIndicatorTheme =>
      throw UnimplementedError();

  @override
  // TODO: implement radioTheme
  RadioThemeData get radioTheme => throw UnimplementedError();

  @override
  // TODO: implement scaffoldBackgroundColor
  Color get scaffoldBackgroundColor => throw UnimplementedError();

  @override
  // TODO: implement scrollbarTheme
  ScrollbarThemeData get scrollbarTheme => throw UnimplementedError();

  @override
  // TODO: implement secondaryHeaderColor
  Color get secondaryHeaderColor => throw UnimplementedError();

  @override
  // TODO: implement selectedRowColor
  Color get selectedRowColor => throw UnimplementedError();

  @override
  // TODO: implement shadowColor
  Color get shadowColor => throw UnimplementedError();

  @override
  // TODO: implement sliderTheme
  SliderThemeData get sliderTheme => throw UnimplementedError();

  @override
  // TODO: implement snackBarTheme
  SnackBarThemeData get snackBarTheme => throw UnimplementedError();

  @override
  // TODO: implement splashColor
  Color get splashColor => throw UnimplementedError();

  @override
  // TODO: implement splashFactory
  InteractiveInkFeatureFactory get splashFactory => throw UnimplementedError();

  @override
  // TODO: implement switchTheme
  SwitchThemeData get switchTheme => throw UnimplementedError();

  @override
  // TODO: implement tabBarTheme
  TabBarTheme get tabBarTheme => throw UnimplementedError();

  @override
  // TODO: implement textButtonTheme
  TextButtonThemeData get textButtonTheme => throw UnimplementedError();

  @override
  // TODO: implement textSelectionColor
  Color get textSelectionColor => throw UnimplementedError();

  @override
  // TODO: implement textSelectionHandleColor
  Color get textSelectionHandleColor => throw UnimplementedError();

  @override
  // TODO: implement textSelectionTheme
  TextSelectionThemeData get textSelectionTheme => throw UnimplementedError();

  @override
  // TODO: implement textTheme
  TextTheme get textTheme => throw UnimplementedError();

  @override
  // TODO: implement timePickerTheme
  TimePickerThemeData get timePickerTheme => throw UnimplementedError();

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    // TODO: implement toDiagnosticsNode
    throw UnimplementedError();
  }

  @override
  String toStringShort() {
    // TODO: implement toStringShort
    throw UnimplementedError();
  }

  @override
  // TODO: implement toggleButtonsTheme
  ToggleButtonsThemeData get toggleButtonsTheme => throw UnimplementedError();

  @override
  // TODO: implement toggleableActiveColor
  Color get toggleableActiveColor => throw UnimplementedError();

  @override
  // TODO: implement tooltipTheme
  TooltipThemeData get tooltipTheme => throw UnimplementedError();

  @override
  // TODO: implement typography
  Typography get typography => throw UnimplementedError();

  @override
  // TODO: implement unselectedWidgetColor
  Color get unselectedWidgetColor => throw UnimplementedError();

  @override
  // TODO: implement useMaterial3
  bool get useMaterial3 => throw UnimplementedError();

  @override
  // TODO: implement useTextSelectionTheme
  bool get useTextSelectionTheme => throw UnimplementedError();

  @override
  // TODO: implement visualDensity
  VisualDensity get visualDensity => throw UnimplementedError();
}
