import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class JobCard extends StatelessWidget {
  final Job job;
  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorName.jasmine.shade900,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: job.company.logoUrl,
                    width: 50,
                    placeholder: (context, url) =>
                        const ShimmerSquare(size: 50),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      job.company.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: ColorName.lavender,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      FeatherIcons.dollarSign,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text(
                        job.salary,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      FeatherIcons.briefcase,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        job.experience,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      FeatherIcons.award,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        job.graduation,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      FeatherIcons.calendar,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        job.deadline,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      job.type,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: ColorName.lavender,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(2, 1, 2, 0),
                      child: Text('•'),
                    ),
                    Text(
                      job.baseLocation,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: ColorName.lavender,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      FeatherIcons.mapPin,
                      size: 12,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      job.company.location.place,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () => context.push(Routes.jobDetail, extra: job),
    );
  }
}
