import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/button_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SettingButtonToggleIcon extends StatelessWidget {
  final bool active;
  final String label;
  final IconData icon;
  final GestureTapCallback? onTap;
  const SettingButtonToggleIcon({
    super.key,
    this.active = false,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 18,
        color: ColorName.lavender,
      ),
      label: label,
      trailing: Icon(
        active ? FeatherIcons.toggleRight : FeatherIcons.toggleLeft,
        color: active ? ColorName.lavender : Colors.grey.shade500,
      ),
    );
  }
}
