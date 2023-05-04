import 'package:career_crush/src/config/router/router.dart';
import 'package:career_crush/src/config/themes/no_scroll_overlay.dart';
import 'package:career_crush/src/config/themes/themes.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  initializeDateFormatting('id_ID', null)
      .then((_) => {runApp(const ProviderScope(child: MyApp()))});
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
      builder: FlutterSmartDialog.init(),
    );
  }
}
