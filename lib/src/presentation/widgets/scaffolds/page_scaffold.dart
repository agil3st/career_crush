import 'package:career_crush/src/presentation/widgets/logo/logo.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class PageScaffold extends Scaffold {
  PageScaffold(
      {Key? key,
      Widget? body,
      String? title,
      bool useAppBar = true,
      bool hideBackButton = true,
      List<Widget>? actions})
      : super(
          key: key,
          backgroundColor: Colors.white,
          appBar: !useAppBar
              ? null
              : AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: const Logo(),
                  titleSpacing: 30,
                  automaticallyImplyLeading: !hideBackButton,
                  actions: actions,
                ),
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.horizontalPadding,
            ),
            child: body,
          ),
        );
}
