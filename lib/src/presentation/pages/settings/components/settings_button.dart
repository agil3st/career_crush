import 'package:career_crush/gen/assets.gen.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.push(Routes.settings),
      icon: Assets.images.icons.apps.setting.svg(),
    );
  }
}
