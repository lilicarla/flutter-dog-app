import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData();

ColorScheme _colorScheme = const ColorScheme(
  primary: Color(0xFF11D3BC),
  secondary: Color(0xFF55E9BC),
  surface: Color(0xFFFFFFFF),
  background: Color.fromARGB(255, 216, 227, 235),
  error: Color(0xFFD3092E),
  onPrimary: Color(0xFF212121),
  onSecondary: Color(0xFF212121),
  onSurface: Color(0xFF212121),
  onBackground: Color(0xFF212121),
  onError: Color(0xFFFFFFFF),
  brightness: Brightness.light,
);

ThemeData themeData() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: _colorScheme.background,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: _colorScheme.primary,
      elevation: 1.0,
      iconTheme: IconThemeData(
        color: _colorScheme.onPrimary,
      ),
    ),
  );
}

// material color (primary swatch) : 500

  // const MaterialColor primarySwatch = MaterialColor(
  //   0xFF11D3BC,
  //   <int, Color>{
  //     50: Color(0xFFE0F7F6),
  //     100: Color(0xFFB3EAE4),
  //     200: Color(0xFF80DDD1),
  //     300: Color(0xFF4DCFC0),
  //     400: Color(0xFF26C6B3),
  //     500: Color(0xFF11D3BC),
  //     600: Color(0xFF0EB0A0),
  //     700: Color(0xFF0A8A7E),
  //     800: Color(0xFF07645C),
  //     900: Color(0xFF043E3A),
  //   },
  // );