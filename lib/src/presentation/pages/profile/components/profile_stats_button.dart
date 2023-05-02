import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:flutter/material.dart';

class ProfileStatsButton extends StatelessWidget {
  final int value;
  final String label;
  const ProfileStatsButton({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return FullButton(
      onPressed: () {},
      fontSize: 14,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      label: '',
      text: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$value',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}
