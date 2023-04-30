import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class PageScaffold extends Scaffold {
  PageScaffold({
    Key? key,
    Widget? body,
    String? title,
    Widget? titleWidget,
    bool useAppBar = true,
    bool hideBackButton = false,
    List<Widget>? actions,
  }) : super(
          key: key,
          backgroundColor: Colors.white,
          appBar: !useAppBar
              ? null
              : AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: titleWidget ??
                      Text(
                        title ?? '',
                        style: const TextStyle(
                          color: ColorName.midnight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  titleSpacing: hideBackButton ? 20 : 0,
                  automaticallyImplyLeading: !hideBackButton,
                  leading: const BackButton(),
                  iconTheme: const IconThemeData(
                    color: ColorName.midnight,
                  ),
                  actions: actions,
                ),
          body: body,
        );
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(FeatherIcons.chevronLeft),
      constraints: const BoxConstraints(),
      padding: const EdgeInsets.only(bottom: 3),
    );
  }
}
