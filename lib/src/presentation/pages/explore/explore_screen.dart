import 'package:career_crush/src/presentation/pages/explore/components/job_list.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      showFooter: false,
      padding: EdgeInsets.zero,
      actions: [
        IconButton(
          onPressed: () => context.push(Routes.jobFilter),
          icon: const Icon(
            FeatherIcons.filter,
          ),
        )
      ],
      body: const JobList(),
    );
  }
}
