import 'package:career_crush/src/config/themes/no_scroll_overlay.dart';
import 'package:career_crush/src/config/themes/themes.dart';
import 'package:career_crush/src/presentation/views/welcome/welcome.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: NoScrollOverlay(),
      title: Constants.appTitle,
      color: Colors.white,
      theme: Themes().light,
      home: WelcomeScreen(),
    );
  }
}
