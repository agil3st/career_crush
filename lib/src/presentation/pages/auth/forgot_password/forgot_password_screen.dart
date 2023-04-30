import 'package:career_crush/gen/assets.gen.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: Constants.welcomeTopPadding),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Assets.images.illustrations.forgotPassword.svg(),
            ),
            CustomTextField.verticalSpacing,
            Column(
              children: [
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CustomTextField.verticalSpacing,
                const Text(
                  'Please enter your registered Email ID to reset your password. '
                  'We will send reset password link to your Email ID. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Email',
                    hint: 'johndoe@email.com',
                  ),
                  CustomTextField.verticalSpacing,
                  TextButton(
                    child: const Text(
                      'Try another way',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: ColorName.lavender),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                  child: FullButton(
                    onPressed: () {},
                    label: 'Send',
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Done resetting your password? ",
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: ' Sign In',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorName.lavender,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            if (context.canPop()) context.pop();
                          },
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
