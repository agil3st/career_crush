import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:career_crush/src/presentation/pages/home/cards_holder.dart';
import 'package:career_crush/src/presentation/pages/home/job_card_tile.dart';
import 'package:flutter/material.dart';

class FeaturedJobs extends StatelessWidget {
  const FeaturedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return CardsHolder(
      title: 'Featured Jobs',
      child: SizedBox(
        height: 115,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => JobCardTile(job: Job.jobList[index]),
          separatorBuilder: (context, index) => const SizedBox(width: 20),
          itemCount: Job.jobList.length,
        ),
      ),
    );
  }
}
