import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_location.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class JobCardVertical extends StatelessWidget {
  final Job job;
  const JobCardVertical({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 170,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorName.jasmine.shade900,
          // border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CachedNetworkImage(
                      height: 70,
                      imageUrl: job.company.logoUrl,
                      placeholder: (context, url) =>
                          const ShimmerSquare(size: 50),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  job.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    height: 1.24,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  job.company.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 4),
                const JobLocation(location: 'Jakarta, Indonesia'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  job.type,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: ColorName.lavender,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      FeatherIcons.star,
                      size: 12,
                      color: Colors.yellow.shade800,
                    ),
                    const SizedBox(width: 2),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        '${job.rating}',
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () => context.push(Routes.jobDetail, extra: job),
    );
  }
}
