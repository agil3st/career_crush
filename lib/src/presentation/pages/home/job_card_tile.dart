import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/job/job.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class JobCardTile extends StatelessWidget {
  final Job job;
  const JobCardTile({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  height: 50,
                  imageUrl: job.company.logoUrl,
                  placeholder: (context, url) => const ShimmerSquare(size: 50),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      job.company.name,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 11,
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      FeatherIcons.mapPin,
                      size: 12,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      job.company.location.place,
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Text(
                  job.type,
                  style: const TextStyle(
                    fontSize: 10,
                    color: ColorName.lavender,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: () => context.push(Routes.jobDetail),
    );
  }
}
