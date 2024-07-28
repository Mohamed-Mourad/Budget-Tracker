import 'package:flutter/material.dart';

class LightTheme {
  static const colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff4caf50),
    onPrimary: Color(0xffe5e5e5),
    primaryContainer: Color(0xffc8e6c9),
    onPrimaryContainer: Color(0xff000000),
    secondary: Color(0xff81c784),
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffe8f5e9),
    onSecondaryContainer: Color(0xff000000),
    tertiary: Color(0xffa5d6a7),
    onTertiary: Color(0xff000000),
    tertiaryContainer: Color(0xffe8f5e9),
    onTertiaryContainer: Color(0xff000000),
    error: Color(0xffd32f2f),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffef9a9a),
    onErrorContainer: Color(0xff000000),
    background: Color(0xffffffff),
    onBackground: Color(0xff000000),
    surface: Color(0xfffafafa),
    onSurface: Color(0xff000000),
    surfaceVariant: Color(0xffeeeeee),
    onSurfaceVariant: Color(0xff000000),
    outline: Color(0xff757575),
    outlineVariant: Color(0xffbdbdbd),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff000000),
    onInverseSurface: Color(0xffffffff),
    inversePrimary: Color(0xff66bb6a),
    surfaceTint: Color(0xff4caf50),
  );

  static ThemeData get theme {
    return ThemeData(
      colorScheme: colorScheme,
      listTileTheme: ListTileThemeData(
        tileColor: colorScheme.surfaceVariant.withOpacity(0.2),
      ),
      chipTheme: ChipThemeData(
        labelPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
        padding: EdgeInsets.zero,
        selectedColor: colorScheme.primaryContainer,
        showCheckmark: false,
        shape: const RoundedRectangleBorder(
          side: BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.all(14),
        ),
      ),
    );
  }
}
