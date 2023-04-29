import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
        body: Column(
      children: [
        Column(
          children: const [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Login to your Account',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        RichText(
            text: TextSpan(text: "Don't have an account?", children: [
          TextSpan(
              text: 'Sign Up',
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: ColorName.lavender),
              recognizer: TapGestureRecognizer()
                ..onTap = () => context.go(Routes.signUp))
        ]))
      ],
    ));
  }
}
