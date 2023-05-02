import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/pages/job_detail/components/job_location.dart';
import 'package:career_crush/src/presentation/widgets/shimmers/shimmer_square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class JobCardVertical extends StatelessWidget {
  const JobCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorName.jasmine.shade900,
        // border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: CachedNetworkImage(
                    height: 50,
                    imageUrl: 'https://uilogos.co/img/logomark/treva.png',
                    placeholder: (context, url) =>
                        const ShimmerSquare(size: 50),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'UI/UX Designer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const JobLocation(location: 'Jakarta, Indonesia'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Full Time',
                style: TextStyle(
                  fontSize: 10,
                  color: ColorName.lavender,
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
          )
        ],
      ),
    );
  }
}
