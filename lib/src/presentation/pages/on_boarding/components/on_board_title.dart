import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class OnBoardTitle extends StatelessWidget {
  const OnBoardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Constants.onBoardHorizontalPadding,
      child: Text(
        'Job Portal Apps',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorName.lavender,
          fontWeight: FontWeight.w900,
          fontSize: 30,
        ),
      ),
    );
  }
}
