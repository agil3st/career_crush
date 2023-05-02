import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/avatar/avatar.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Avatar(
          size: 50,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Gwen Victoria',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: ColorName.midnight,
                height: 0.7,
              ),
            ),
            Text(
              'Graphic Designer',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        )
      ],
    );
  }
}
