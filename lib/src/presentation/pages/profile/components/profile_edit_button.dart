import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              FeatherIcons.edit,
              size: 14,
              color: ColorName.lavender,
            ),
            SizedBox(width: 3),
            Padding(
              padding: EdgeInsets.only(top: 3),
              child: Text(
                'Edit',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: ColorName.lavender,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
