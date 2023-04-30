import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Job Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorName.midnight,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Rebum ut voluptua sit te rebum sit esse dolores delenit amet '
            'consectetuer ipsum dolore dolore. Et rebum accusam elit quis ut '
            'enim justo invidunt ipsum veniam ad amet. Enim voluptua aliquyam '
            'sed. Amet elitr facilisis enim vel sed at vero.',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
