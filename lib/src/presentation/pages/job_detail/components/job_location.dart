import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class JobLocation extends StatelessWidget {
  final String location;
  final Color? color;
  const JobLocation({super.key, required this.location, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FeatherIcons.mapPin,
          size: 12,
          color: color,
        ),
        const SizedBox(width: 2),
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
