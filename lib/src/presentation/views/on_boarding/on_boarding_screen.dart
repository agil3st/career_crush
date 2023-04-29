import 'package:career_crush/gen/assets.gen.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: Constants.welcomeTopPadding),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Job Portal Apps',
                  style: TextStyle(
                      color: ColorName.lavender,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80),
                  child: Assets.images.illustrations.welcome.svg(),
                ),
                const Text(
                  'We bring the best for you',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
                ),
                const SizedBox(height: 14),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
                  'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: DotsIndicator(
                dotsCount: 4,
                position: 1,
                decorator: DotsDecorator(
                  color: Colors.grey.shade200, // Inactive color
                  activeColor: ColorName.lavender,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                  onPressed: () => context.go(Routes.signUp),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(ColorName.lavender),
                      padding: MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 10))),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
