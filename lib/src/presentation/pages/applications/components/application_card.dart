import 'package:cached_network_image/cached_network_image.dart';
import 'package:career_crush/gen/colors.gen.dart';
import 'package:career_crush/src/presentation/widgets/buttons/full_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorName.jasmine.shade900,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: 'https://uilogos.co/img/logomark/treva.png',
                    width: 50,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '3.5jt - 5jt',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorName.lavender,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.pink,
                    child: Row(
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
                  ),
                  SizedBox(
                    width: 80,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Delivered',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: -4,
          child: IconButton(
            icon: const Icon(FeatherIcons.moreVertical, size: 18),
            constraints: const BoxConstraints(),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
