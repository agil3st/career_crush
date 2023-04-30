import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/pages/applications/components/application_list.dart';
import 'package:career_crush/src/presentation/pages/applications/components/application_tabs.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:flutter/material.dart';

class ApplicationsScreen extends StatelessWidget {
  const ApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      showSettingsButton: true,
      showFooter: false,
      body: Column(
        children: const [
          ApplicationTabs(),
          Expanded(child: ApplicationList()),
        ],
      ),
    );
  }
}
