import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class TeaserSection extends StatelessWidget {
  final Widget child;
  final String title;
  final GestureTapCallback? onTap;
  const TeaserSection(
      {super.key, required this.child, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const Icon(
                  FeatherIcons.chevronRight,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        child
      ],
    );
  }
}
