import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class FullButton extends FilledButton {
  FullButton({required super.onPressed, required String label})
      : super(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(ColorName.lavender),
              padding: MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 10))),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        );
}
