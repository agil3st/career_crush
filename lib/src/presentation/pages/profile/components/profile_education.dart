import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ProfileEducation extends StatelessWidget {
  const ProfileEducation({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> educations = [
      'Master Degree (S2), Information Technology, Harvard University',
      'Bachelor Degree (S1), Teknik Informatika, Institut Teknologi Adhi Tama Surabaya',
      'Vocational High School (SMK), Multimedia, SMK Raden Patah Kota Mojokerto',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Educations',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Timeline.tileBuilder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          theme: TimelineThemeData(
            color: ColorName.lavender.shade200,
            nodePosition: 0,
            connectorTheme: ConnectorThemeData(
              thickness: 1.6,
            ),
            indicatorTheme: IndicatorThemeData(
              size: 10,
            ),
          ),
          builder: TimelineTileBuilder.fromStyle(
            contentsAlign: ContentsAlign.basic,
            indicatorStyle: IndicatorStyle.outlined,
            endConnectorStyle: ConnectorStyle.transparent,
            contentsBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Container(
                height: 50,
                // color: Colors.pink,
                alignment: Alignment.centerLeft,
                child: Text(
                  educations[index],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            itemCount: educations.length,
          ),
        )
      ],
    );
  }
}
