import 'package:career_crush/src/presentation/pages/profile/components/profile_stats_button.dart';
import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: ProfileStatsButton(value: 6, label: 'Job Applied'),
        ),
        SizedBox(width: 10),
        Expanded(
          child: ProfileStatsButton(value: 1, label: 'Interview'),
        ),
      ],
    );
  }
}
