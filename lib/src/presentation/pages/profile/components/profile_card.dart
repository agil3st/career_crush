import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/pages/profile/components/profile_edit_button.dart';
import 'package:career_crush/src/presentation/widgets/avatar/avatar.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Avatar(size: 100),
        const SizedBox(height: 10),
        const Text(
          'Gwen Victoria',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: ColorName.midnight,
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
        const SizedBox(height: 10),
        const ProfileEditButton()
      ],
    );
  }
}
