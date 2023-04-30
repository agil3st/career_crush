import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class JobCompanyLogo extends StatelessWidget {
  const JobCompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: CachedNetworkImage(
          imageUrl: 'https://uilogos.co/img/logomark/treva.png',
          height: 80,
        ),
      ),
    );
  }
}
