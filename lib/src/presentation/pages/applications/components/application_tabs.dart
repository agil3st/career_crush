import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ApplicationTabs extends StatelessWidget {
  const ApplicationTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: const Text(
              'Applied',
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
              'Interview',
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
