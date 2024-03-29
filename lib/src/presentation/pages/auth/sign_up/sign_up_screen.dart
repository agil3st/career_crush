import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/gen/fonts.gen.dart';
import 'package:career_crush/src/presentation/pages/auth/components/password_field.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:career_crush/src/utils/soft_keyboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final passwordProvider = StateProvider<bool>((ref) => true);
final repasswordProvider = StateProvider<bool>((ref) => true);

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: Constants.welcomeTopPaddingValue),
        child: ListView(
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
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    inputFormatters: SoftKeyboard.urlFormat,
                  ),
                  CustomTextField.verticalSpacing,
                  CustomTextField(
                    label: 'Email',
                    hint: 'johndoe@email.com',
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: [SoftKeyboard.emailSymbols],
                    textInputAction: TextInputAction.next,
                  ),
                  CustomTextField.verticalSpacing,
                  PasswordField(
                    toggleProvider: passwordProvider,
                    label: 'Password',
                    hint: 'Enter your password',
                    textInputAction: TextInputAction.next,
                  ),
                  CustomTextField.verticalSpacing,
                  PasswordField(
                    toggleProvider: repasswordProvider,
                    label: 'Confirm Password',
                    hint: 'Enter your password one more time',
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
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: FontFamily.poppins,
                      fontSize: 14,
                    ),
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
