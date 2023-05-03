import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class JobCompanyLogo extends StatelessWidget {
  final String url;
  const JobCompanyLogo({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: CachedNetworkImage(
          imageUrl: url,
          height: 80,
        ),
      ),
    );
  }
}
