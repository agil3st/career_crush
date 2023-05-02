import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class FilledTextField extends StatelessWidget {
  final String label;
  final String hint;
  const FilledTextField({super.key, required this.label, required this.hint});

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
        TextField(
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorName.jasmine,
            hintText: hint,
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(16, 14, 14, 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
