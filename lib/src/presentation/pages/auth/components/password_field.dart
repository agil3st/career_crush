import 'package:career_crush/src/presentation/widgets/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordField extends ConsumerWidget {
  final StateProvider<bool> toggleProvider;
  final String label;
  final String hint;
  final TextInputAction? textInputAction;
  const PasswordField({
    super.key,
    required this.toggleProvider,
    required this.label,
    required this.hint,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = ref.read(toggleProvider.notifier);
    return PasswordTextField(
      label: label,
      hint: hint,
      textInputAction: textInputAction,
      obscureText: ref.watch(toggleProvider),
      onToggle: () => password.state = !password.state,
    );
  }
}
