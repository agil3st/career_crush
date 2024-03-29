import 'package:career_crush/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class JobLocation extends StatelessWidget {
  final String location;
  final Color color;
  const JobLocation({
    super.key,
    required this.location,
    this.color = ColorName.midnight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FeatherIcons.mapPin,
          size: 12,
          color: color.withOpacity(0.4),
        ),
        const SizedBox(width: 4),
        Text(
          location,
          style: TextStyle(
            fontSize: 10,
            color: color,
          ),
        )
      ],
    );
  }
}
