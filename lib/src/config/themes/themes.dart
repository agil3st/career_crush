import 'package:flutter/material.dart';
import 'package:career_crush/src/utils/constants/constants.dart';

class Themes {
  final String primaryFont = Constants.fontFamily;

  ThemeData get light => ThemeData(
      fontFamily: primaryFont,
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(Colors.black)),
      ));
}
