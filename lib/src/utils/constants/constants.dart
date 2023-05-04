import 'package:flutter/material.dart';

class Constants {
  static const appTitle = 'CareerCrush';
  static const fontFamily = 'Poppins';

  /* Spaces */
  static const double horizontalPaddingValue = 20;
  static const double onBoardHorizontalPaddingValue = 30;
  static const double welcomeTopPaddingValue = 70;
  static const double bottomListPaddingValue = 120;

  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: horizontalPaddingValue,
  );

  static const EdgeInsets onBoardHorizontalPadding = EdgeInsets.symmetric(
    horizontal: onBoardHorizontalPaddingValue,
  );

  static const EdgeInsets topPadding = EdgeInsets.only(
    top: welcomeTopPaddingValue,
  );

  static const EdgeInsets bottomListPadding = EdgeInsets.only(
    bottom: bottomListPaddingValue,
  );
}
