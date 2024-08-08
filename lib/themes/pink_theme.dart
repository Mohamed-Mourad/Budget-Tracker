import 'package:flutter/material.dart';

class PinkTheme {
  static const colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xffffb7ce),
    onPrimary: Color(0xff000000),
    primaryContainer: Color(0xffffdce6),
    onPrimaryContainer: Color(0xff000000),
    secondary: Color(0xffffc2d5),
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffffe5ec),
    onSecondaryContainer: Color(0xff000000),
    tertiary: Color(0xffffa2c0),
    onTertiary: Color(0xff000000),
    tertiaryContainer: Color(0xffffcce0),
    onTertiaryContainer: Color(0xff000000),
    error: Color(0xffd32f2f),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffef9a9a),
    onErrorContainer: Color(0xff000000),
    surface: Color(0xfffff5f8),
    onSurface: Color(0xff000000),
    onSurfaceVariant: Color(0xff000000),
    outline: Color(0xff757575),
    outlineVariant: Color(0xffbdbdbd),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff000000),
    onInverseSurface: Color(0xffffffff),
    inversePrimary: Color(0xffff9bb5),
    surfaceTint: Color(0xffffb7ce),
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
