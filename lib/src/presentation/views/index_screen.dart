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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -5),
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: Colors.black12)
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomNavigationBar(
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
                .map((e) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      e.icon,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.shade400, BlendMode.srcIn),
                    ),
                    activeIcon: SvgPicture.asset(
                      e.icon,
                      colorFilter: const ColorFilter.mode(
                          ColorName.lavender, BlendMode.srcIn),
                    ),
                    label: e.label))
                .toList()),
      ),
    );
  }
}
