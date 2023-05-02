import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:career_crush/src/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

class JobCardTile extends StatelessWidget {
  const JobCardTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  height: 50,
                  imageUrl: 'https://uilogos.co/img/logomark/tvit.png',
                  placeholder: (context, url) => const ShimmerSquare(size: 50),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Finance Officer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      'PT. Tvit Indonesia',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 11,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          FeatherIcons.star,
                          size: 12,
                          color: Colors.yellow.shade800,
                        ),
                        const SizedBox(width: 2),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            '4.8',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      FeatherIcons.mapPin,
                      size: 12,
                    ),
                    SizedBox(width: 2),
                    Text(
                      'Jakarta, Indonesia',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                const Text(
                  'Full Time',
                  style: TextStyle(
                    fontSize: 10,
                    color: ColorName.lavender,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: () => context.push(Routes.jobDetail),
    );
  }
}
