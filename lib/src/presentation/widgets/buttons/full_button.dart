import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class FullButton extends FilledButton {
  FullButton({
    super.key,
    required super.onPressed,
    required String label,
    EdgeInsets? padding,
    Color? color,
    Widget? text,
    double fontSize = 18,
  }) : super(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              color ?? ColorName.lavender,
            ),
            padding: MaterialStatePropertyAll<EdgeInsets>(
              padding ?? const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
          child: text ??
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                ),
              ),
        );
}
