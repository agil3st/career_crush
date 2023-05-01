import 'package:career_crush/src/presentation/pages/explore/components/job_card.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  const JobList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 80),
      itemBuilder: (context, index) => JobCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 10,
    );
  }
}