import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: AppRouter.bottomNav.map((e) => e.screen).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: ColorName.lavender,
          unselectedItemColor: Colors.grey.shade400,
          selectedIconTheme: const IconThemeData(color: ColorName.lavender),
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          items: AppRouter.bottomNav
              .map((e) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    e.icon,
                    colorFilter:
                        ColorFilter.mode(Colors.grey.shade400, BlendMode.srcIn),
                  ),
                  activeIcon: SvgPicture.asset(
                    e.icon,
                    colorFilter: const ColorFilter.mode(
                        ColorName.lavender, BlendMode.srcIn),
                  ),
                  label: e.label))
              .toList()),
    );
  }
}
