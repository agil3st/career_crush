import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/config/router/router.dart';
import 'package:career_crush/src/presentation/view_models/navigation/page_controller_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarConsumer extends ConsumerWidget {
  const NavBarConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void animateToPage(value) {
      ref.read(pageControllerProvider.notifier).animateToPage(value);
      ref.read(currentPageProvider.notifier).state = value;
      debugPrint('index: ${ref.read(currentPageProvider.notifier).state}');
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 10,
            spreadRadius: 0,
            color: Colors.black12,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: ref.watch(currentPageProvider),
        onTap: animateToPage,
        backgroundColor: Colors.transparent,
        showUnselectedLabels: true,
        selectedItemColor: ColorName.lavender,
        unselectedItemColor: Colors.grey.shade400,
        selectedIconTheme: const IconThemeData(color: ColorName.lavender),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        elevation: 0,
        items: AppRouter.bottomNav
            .map(
              (e) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  e.icon,
                  colorFilter: ColorFilter.mode(
                    Colors.grey.shade400,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  e.icon,
                  colorFilter: const ColorFilter.mode(
                    ColorName.lavender,
                    BlendMode.srcIn,
                  ),
                ),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
