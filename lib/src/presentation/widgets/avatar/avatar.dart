import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fade_shimmer/fade_shimmer.dart';

class Avatar extends StatelessWidget {
  final int id;
  final int resolution;
  final double size;
  const Avatar({
    super.key,
    this.id = 1,
    this.resolution = 300,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: 'https://i.pravatar.cc/$resolution?img=$id',
      imageBuilder: (context, imageProvider) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(size / 2),
          image: DecorationImage(
            image: imageProvider,
          ),
        ),
      ),
      placeholder: (context, url) => FadeShimmer.round(
        baseColor: Colors.grey.shade600,
        highlightColor: Colors.grey.shade100,
        size: size,
      ),
    );
  }
}
