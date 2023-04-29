import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPageProvider = StateProvider<int>((ref) => 0);

final pageControllerProvider =
    StateNotifierProvider<PageControllerNotifier, PageController>((ref) {
  return PageControllerNotifier();
});

class PageControllerNotifier extends StateNotifier<PageController> {
  PageControllerNotifier() : super(PageController());

  void animateToPage(int page) {
    state.animateToPage(
      page,
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeInOut,
    );
  }
}
