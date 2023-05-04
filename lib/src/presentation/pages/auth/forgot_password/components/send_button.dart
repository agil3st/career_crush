import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSendButton extends StatelessWidget {
  const ForgotPasswordSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
      child: FullButton(
        label: 'Send',
        isLoading: true,
        onPressed: () {},
      ),
    );
  }
}
