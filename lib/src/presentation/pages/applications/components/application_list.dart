import 'package:career_crush/src/presentation/pages/applications/components/application_card.dart';
import 'package:flutter/material.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
      itemBuilder: (context, index) => const ApplicationCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
