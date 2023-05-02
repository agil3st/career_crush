import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class JobSummary extends StatelessWidget {
  const JobSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'UI/UX Designer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Full Time',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              JobLocation(location: 'Jakarta, Indonesia'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                '3.5jt - 5jt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorName.lavender,
                  fontSize: 16,
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
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      '4.8',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
