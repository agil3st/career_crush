import 'package:flutter/material.dart';

class CustomTextField extends TextField {
  CustomTextField({
    super.key,
    required String label,
    required String hint,
    super.textInputAction,
    super.keyboardType,
    super.inputFormatters,
    super.obscureText,
  }) : super(
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            label: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hint,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 5,
            ),
          ),
        );

  static SizedBox verticalSpacing = const SizedBox(height: 25);
}
