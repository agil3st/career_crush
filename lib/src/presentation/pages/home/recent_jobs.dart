import 'package:career_crush/src/presentation/pages/home/cards_holder.dart';
import 'package:career_crush/src/presentation/pages/home/job_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class RecentJobs extends StatelessWidget {
  const RecentJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return CardsHolder(
      title: 'Recent Job Post',
      child: SizedBox(
        height: 180,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => const JobCardVertical(),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: 5,
        ),
      ),
    );
  }
}
