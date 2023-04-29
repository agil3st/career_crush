// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AppRoute {
  final String label;
  final String path;
  final String icon;
  final Widget screen;

  AppRoute(
      {required this.label,
      required this.path,
      required this.screen,
      required this.icon});
}
