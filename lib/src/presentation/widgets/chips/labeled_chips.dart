import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/chips/chips.dart';
import 'package:flutter/material.dart';

class LabeledChips extends StatelessWidget {
  final String label;
  final int selectedIndex;
  final List<String> values;
  const LabeledChips({
    super.key,
    required this.label,
    required this.values,
    this.selectedIndex = -1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text(
            label,
            style: const TextStyle(
              color: ColorName.lavender,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Chips(
          values: values,
          selectedIndex: selectedIndex,
        ),
      ],
    );
  }
}
