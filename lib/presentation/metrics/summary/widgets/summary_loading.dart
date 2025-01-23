import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SummaryLoading extends StatelessWidget {
  final double height;

  const SummaryLoading({required this.height});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: double.infinity,
        color: Colors.white,
      ),
    );
  }
}
