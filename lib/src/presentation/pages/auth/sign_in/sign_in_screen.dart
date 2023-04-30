import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: ColorName.lavender,
                  ),
                ),
                Text(
                  'Login to your Account',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
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
                  CustomTextField(
                    label: 'Password',
                    hint: 'Enter your password',
                    obscureText: true,
                  ),
                  CustomTextField.verticalSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              FeatherIcons.checkSquare,
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 2),
                          const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              'Remember me',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                  child: FullButton(
                    onPressed: () {},
                    label: 'Sign In',
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: ' Sign Up',
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
