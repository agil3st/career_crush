import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/on_board/on_board_slide.dart';
import 'package:career_crush/src/presentation/pages/on_boarding/components/on_board_slides.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardSlidesIndicator extends ConsumerWidget {
  const OnBoardSlidesIndicator({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: DotsIndicator(
        dotsCount: OnBoardSlide.slides.length,
        position: ref.watch(onBoardSlideProvider).toDouble(),
        decorator: DotsDecorator(
          color: Colors.grey.shade200, // Inactive color
          activeColor: ColorName.lavender,
        ),
      ),
    );
  }
}
