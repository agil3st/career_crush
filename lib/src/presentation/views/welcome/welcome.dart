import 'package:career_crush/src/presentation/widgets/logo/logo.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [Logo()],
      ),
    );
  }
}
