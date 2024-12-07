import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MiniShimmer extends StatelessWidget {
  const MiniShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: 20,
        width: 80,
        color: Colors.grey.shade300,
      ),
    );
  }
}
