import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/button_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SettingButtonIcon extends StatelessWidget {
  final String label;
  final IconData? icon;
  final GestureTapCallback? onTap;
  const SettingButtonIcon({
    super.key,
    required this.label,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTile(
      onTap: onTap,
      leading: icon == null
          ? null
          : Icon(
              icon,
              size: 18,
              color: ColorName.lavender,
            ),
      label: label,
      trailing: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Icon(
          FeatherIcons.chevronRight,
          size: 18,
          color: Colors.grey.shade500,
        ),
      ),
    );
  }
}
