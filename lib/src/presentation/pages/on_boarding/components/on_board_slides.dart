import 'package:career_crush/src/domain/models/on_board/on_board_slide.dart';
import 'package:career_crush/src/presentation/pages/on_boarding/components/on_board_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onBoardSlideProvider = StateProvider<int>((ref) => 0);

class OnBoardSlides extends ConsumerWidget {
  OnBoardSlides({super.key});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context, ref) {
    final slideController = ref.read(onBoardSlideProvider.notifier);
    return SizedBox(
      height: 500,
      child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          slideController.state = index;
        },
        children: OnBoardSlide.slides
            .map(
              (e) => OnBoardStep(
                title: e.title,
                description: e.description,
                illustration: e.image,
              ),
            )
            .toList(),
      ),
    );
  }
}
