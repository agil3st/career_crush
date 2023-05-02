import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerSquare extends StatelessWidget {
  final double size;
  const ShimmerSquare({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return FadeShimmer(
      width: size,
      height: size,
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      radius: 10,
    );
  }
}
