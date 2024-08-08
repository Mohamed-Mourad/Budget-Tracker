import 'package:flutter/material.dart';

class DarkTheme {
  static const colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffff9800),
    onPrimary: Color(0xff000000),
    primaryContainer: Color(0xff4a3b26),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xffffcc80),
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xff6c4f32),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xffffb74d),
    onTertiary: Color(0xff000000),
    tertiaryContainer: Color(0xff5e452d),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffb4ab),
    surface: Color(0xff1c1b18),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffffffff),
    outline: Color(0xff8c8c8c),
    outlineVariant: Color(0xff404040),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffffffff),
    onInverseSurface: Color(0xff000000),
    inversePrimary: Color(0xffffb74d),
    surfaceTint: Color(0xffff9800),
  );

  static ThemeData get theme {
    return ThemeData(
      colorScheme: colorScheme,
      listTileTheme: ListTileThemeData(
        tileColor: colorScheme.onSurfaceVariant.withOpacity(0.2),
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
