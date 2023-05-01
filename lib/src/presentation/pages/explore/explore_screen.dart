import 'package:career_crush/gen/assets.gen.dart';
import 'package:career_crush/src/presentation/pages/explore/components/job_list.dart';
import 'package:career_crush/src/presentation/widgets/scaffolds/welcome_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      showFooter: false,
      padding: EdgeInsets.zero,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FeatherIcons.filter),
        )
      ],
      body: const JobList(),
    );
  }
}
