import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class JobRating extends StatelessWidget {
  final double rating;
  const JobRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FeatherIcons.star,
          size: 12,
          color: Colors.yellow.shade800,
        ),
        const SizedBox(width: 2),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            '$rating',
            style: const TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }
}
