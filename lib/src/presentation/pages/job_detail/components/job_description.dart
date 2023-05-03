import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class JobDescription extends StatelessWidget {
  final String description;
  const JobDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Job Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorName.midnight,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
