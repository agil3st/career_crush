import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: Constants.welcomeTopPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Let's Start!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: ColorName.lavender,
                  ),
                ),
                Text(
                  'Create your account',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Username',
                    hint: 'johnDoe007',
                  ),
                  CustomTextField.verticalSpacing,
                  CustomTextField(
                    label: 'Email',
                    hint: 'johndoe@email.com',
                  ),
                  CustomTextField.verticalSpacing,
                  CustomTextField(
                    label: 'Password',
                    hint: 'Enter your password',
                    obscureText: true,
                  ),
                  CustomTextField.verticalSpacing,
                  CustomTextField(
                    label: 'Confirm Password',
                    hint: 'Enter your password one more time',
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                  child: FullButton(
                    onPressed: () => context.go(Routes.home),
                    label: 'Sign Up',
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Already have an account?",
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: ' Sign In',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorName.lavender,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.push(Routes.signIn),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
