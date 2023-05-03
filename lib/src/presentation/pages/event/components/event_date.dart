import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class EventDate extends StatelessWidget {
  final String date;
  final Color color;
  const EventDate({
    super.key,
    required this.date,
    this.color = ColorName.midnight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FeatherIcons.calendar,
          size: 12,
          color: color.withOpacity(0.4),
        ),
        const SizedBox(width: 4),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            date,
            style: TextStyle(
              fontSize: 10,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
