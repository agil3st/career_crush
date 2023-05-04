import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:career_crush/src/utils/constants/constants.dart';

class Themes {
  final String primaryFont = Constants.fontFamily;

  ThemeData get light => ThemeData(
        fontFamily: primaryFont,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: ColorName.lavender,
            ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: ColorName.lavender,
          hoverColor: ColorName.lavender,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 12,
            height: 1.5,
          ),
        ),
      );
}
