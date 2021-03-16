

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorPalette {
  static const lightBackground = Color(0xFFFDF5D8);
  static const lightAccent = Color(0xFF94BAB6);
  static const primaryColor = Color(0xFF80D587);
  static const primaryAccent = Color(0xFFD9F556);
  static const buttonBackground = Color(0xFF489697);
  static const headlineTextColor = Color(0xFF4C4340);
}


class CustomTheme {
  static final lightTheme = ThemeData(
    accentColor: ColorPalette.lightAccent,
    primaryColor: ColorPalette.primaryColor,
    buttonColor: ColorPalette.buttonBackground,
    backgroundColor: ColorPalette.lightBackground,
    cardColor: ColorPalette.primaryAccent,
    textTheme: TextTheme(
      headline1: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        color: ColorPalette.headlineTextColor,
        fontSize: 50,
      ),
      headline3: GoogleFonts.roboto(
        fontWeight: FontWeight.w500,
        color: ColorPalette.lightBackground,
      ),
    ),
  );
}