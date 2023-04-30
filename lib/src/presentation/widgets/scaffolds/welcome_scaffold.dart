import 'package:career_crush/src/presentation/widgets/logo/logo.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/page_scaffold.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScaffold extends PageScaffold {
  WelcomeScaffold(
      {Key? key, required Widget body, String? title, bool useAppBar = true})
      : super(
          key: key,
          titleWidget: const Logo(),
          hideBackButton: true,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constants.horizontalPadding,
                ),
                child: body,
              ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Text(
                    "CareerCrush by Agil Setiawan",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  ))
            ],
          ),
        );
}
