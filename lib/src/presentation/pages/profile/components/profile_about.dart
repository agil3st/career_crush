import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_location.dart';
import 'package:career_crush/src/presentation/pages/profile/components/profile_education.dart';
import 'package:career_crush/src/presentation/widgets/chips/chips.dart';
import 'package:flutter/material.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'UI/UX Design',
      'UX Research',
      'Adobe Photoshop',
      'Adobe Illustrator',
      'CorelDraw',
      'Sketch',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        const SizedBox(height: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const JobLocation(
              location: 'Jakarta, Indonesia',
              color: ColorName.lavender,
            ),
            const SizedBox(height: 10),
            Text(
              'Sadipscing eirmod labore diam dolores volutpat facilisi consequat duo labore in at ipsum sit erat magna amet. '
              'Et invidunt et elitr nulla nibh eum. Eirmod laoreet et enim elitr tempor duo sed. '
              'Elitr et sit ea no clita assum hendrerit illum duis minim. '
              'Eos aliquyam ipsum tempor diam dolor eos et dolor sea et diam feugiat facilisis. '
              'Ea ea elitr vulputate vero sanctus sed suscipit magna amet zzril sea vero dolor volutpat magna magna ipsum aliquyam.',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Skills',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Chips(values: skills)
          ],
        ),
        const SizedBox(height: 20),
        const ProfileEducation(),
      ],
    );
  }
}
