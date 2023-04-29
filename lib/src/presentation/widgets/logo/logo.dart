import 'package:career_crush/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.svg(width: 100);
  }
}
