import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:career_crush/src/presentation/pages/home/cards_holder.dart';
import 'package:career_crush/src/presentation/pages/home/job_card_vertical.dart';
import 'package:flutter/material.dart';

class RecentJobs extends StatelessWidget {
  const RecentJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return CardsHolder(
      title: 'Recent Job Post',
      child: SizedBox(
        height: 220,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) =>
              JobCardVertical(job: Job.recentJobs[index]),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: Job.jobList.length,
        ),
      ),
    );
  }
}
