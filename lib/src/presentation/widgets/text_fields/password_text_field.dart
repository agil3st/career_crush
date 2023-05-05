import 'package:career_crush/src/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:career_crush/src/utils/soft_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PasswordTextField extends CustomTextField {
  PasswordTextField({
    super.key,
    required String label,
    required String hint,
    required VoidCallback? onToggle,
    super.textInputAction,
    super.obscureText,
  }) : super(
          label: label,
          hint: hint,
          suffix: IconButton(
            icon: Icon(
              obscureText ? FeatherIcons.eyeOff : FeatherIcons.eye,
              size: 20,
            ),
            onPressed: onToggle,
          ),
          suffixConstraint: const BoxConstraints(),
          keyboardType: TextInputType.visiblePassword,
          inputFormatters: [SoftKeyboard.noWhitespaceFormat],
        );

  static SizedBox verticalSpacing = const SizedBox(height: 25);
}
