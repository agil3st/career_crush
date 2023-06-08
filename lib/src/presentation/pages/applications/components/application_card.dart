import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/domain/models/job/job_application.dart';
import 'package:career_crush/src/presentation/widgets/buttons/small_button.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ApplicationCard extends StatelessWidget {
  final JobApplication jobApplication;
  const ApplicationCard({super.key, required this.jobApplication});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
                      imageUrl: jobApplication.job.company.logoUrl,
                      width: 50,
                      placeholder: (context, url) =>
                          const ShimmerSquare(size: 50),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jobApplication.job.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          jobApplication.job.salary,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: ColorName.lavender,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
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
                        jobApplication.job.company.location.place,
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SmallButton(
                    label: jobApplication.statusString,
                    color: jobApplication.statusColor,
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: -4,
          child: IconButton(
            icon: const Icon(FeatherIcons.moreVertical, size: 18),
            constraints: const BoxConstraints(),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
