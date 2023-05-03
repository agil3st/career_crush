import 'package:career_crush/src/domain/models/job/job_application.dart';
import 'package:career_crush/src/presentation/pages/applications/components/application_card.dart';
import 'package:career_crush/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: JobApplication.appliedJobs.length,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, Constants.bottomListPadding),
      itemBuilder: (context, index) =>
          ApplicationCard(jobApplication: JobApplication.appliedJobs[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
