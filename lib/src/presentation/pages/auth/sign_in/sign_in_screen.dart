import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      body: Column(
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
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: FullButton(
                  onPressed: () {},
                  label: 'Login',
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
    );
  }
}
