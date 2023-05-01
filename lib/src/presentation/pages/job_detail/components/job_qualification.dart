import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/config/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class JobQualification extends StatelessWidget {
  const JobQualification({super.key});

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
            data: ''
                '- Nonumy gubergren nulla ipsum adipiscing sanctus sed'
                '\n- luptatum ex aliquam takimata ut'
                '\n- voluptua est nonumy eos option.'
                '\n- No amet et eirmod. Dolor eum sed.'
                '\n- Kasd magna clita autem voluptua voluptua eirmod sed dolor.'
                '\n- Diam minim minim ut eirmod labore. '
                '\n- Amet feugiat justo dolor facilisi dolore eleifend rebum aliquyam autem no et tempor eu elitr ullamcorper. '
                '\n- Magna erat vel duo accusam iriure eu ut tincidunt takimata. '
                '\n- Consectetuer rebum et et aliquyam stet sanctus facilisis esse elitr dolore diam.'
                '\n- Voluptua rebum sit duo dolores diam erat dolores tempor. '
                '\n- Nulla nihil vel kasd ad zzril elitr magna ea labore diam.'
                '',
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
