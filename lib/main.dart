import 'package:career_crush/src/config/router/router.dart';
import 'package:career_crush/src/config/themes/no_scroll_overlay.dart';
import 'package:career_crush/src/config/themes/themes.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      scrollBehavior: NoScrollOverlay(),
      title: Constants.appTitle,
      color: Colors.white,
      theme: Themes().light,
    );
  }
}
