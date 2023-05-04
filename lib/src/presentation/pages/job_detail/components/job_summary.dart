import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_location.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_rating.dart';
import 'package:flutter/material.dart';

class JobSummary extends StatelessWidget {
  final Job job;
  const JobSummary({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  height: 1,
                ),
              ),
              Text(
                job.salary,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorName.lavender,
                  fontSize: 14,
                ),
              ),
              Text(
                job.type,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              JobLocation(location: job.company.location.place),
            ],
          ),
          JobRating(rating: job.rating)
        ],
      ),
    );
  }
}
