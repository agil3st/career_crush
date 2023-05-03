import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/config/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class JobQualification extends StatelessWidget {
  final String qualification;
  const JobQualification({super.key, required this.qualification});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Qualification',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorName.midnight,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          MarkdownBody(
            data: qualification,
            styleSheet: MarkdownStyleSheet.fromTheme(Themes().light).copyWith(
              pPadding: EdgeInsets.zero,
              listBulletPadding: EdgeInsets.zero,
              listBullet: const TextStyle(fontSize: 16, height: 0),
              listIndent: 16,
            ),
          ),
          const SizedBox(
            height: 140,
          ),
        ],
      ),
    );
  }
}
