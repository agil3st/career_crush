import 'package:flutter/material.dart';

class AppVersionInfo extends StatelessWidget {
  const AppVersionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'App Version 1.0.0 (20230502)',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade500,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    );
  }
}
