import 'package:career_crush/src/presentation/pages/on_boarding/components/on_board_slides.dart';
import 'package:career_crush/src/presentation/pages/on_boarding/components/on_board_slides_indicator.dart';
import 'package:career_crush/src/presentation/pages/on_boarding/components/on_board_title.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      resizeToAvoidBottomInset: false,
      padding: EdgeInsets.zero,
      body: Column(
        children: [
          Expanded(
            child: Container(
              // color: Colors.yellow,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  const OnBoardTitle(),
                  Flexible(child: OnBoardSlides()),
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const OnBoardSlidesIndicator(),
                Container(
                  width: double.infinity,
                  padding: Constants.onBoardHorizontalPadding,
                  child: FullButton(
                    onPressed: () => context.go(Routes.signUp),
                    label: 'Register',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40)
        ],
      ),
    );
  }
}
