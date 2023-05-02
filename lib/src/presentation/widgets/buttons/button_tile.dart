import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ButtonTile extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String label;
  final GestureTapCallback? onTap;
  const ButtonTile({
    super.key,
    this.leading,
    this.trailing,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: ColorName.jasmine,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leading ?? const SizedBox(),
                Padding(
                  padding: leading == null
                      ? EdgeInsets.zero
                      : const EdgeInsets.fromLTRB(12, 2, 10, 0),
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 12,
                      color: ColorName.midnight,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            trailing ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
