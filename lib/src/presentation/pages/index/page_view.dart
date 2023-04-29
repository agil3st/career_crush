import 'package:career_crush/src/config/router/router.dart';
import 'package:career_crush/src/presentation/view_models/navigation/page_controller_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageViewConsumer extends ConsumerWidget {
  const PageViewConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return PageView(
      controller: pageController,
      children: AppRouter.bottomNav.map((e) => e.screen).toList(),
      onPageChanged: (value) =>
          ref.read(currentPageProvider.notifier).state = value,
    );
  }
}
