import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class JobTabs extends StatelessWidget {
  const JobTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: const BoxDecoration(color: ColorName.jasmine),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: const Text(
              'Description',
              style: TextStyle(
                color: ColorName.midnight,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'Company',
              style: TextStyle(
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'Review',
              style: TextStyle(
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
