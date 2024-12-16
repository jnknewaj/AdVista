import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPieChart extends StatelessWidget {
  const ShimmerPieChart();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: screenHeightPortion(context, 0.32), // Match the original height
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Column(
        children: [
          // Placeholder for title
          ShimmerWidget.rectangular(
            height: 20,
            width: screenWidthPortion(context, 0.5),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Placeholder for pie chart
              ShimmerWidget.circular(
                height: screenHeightPortion(context, 0.25),
                width: screenWidthPortion(context, 0.40),
              ),
              // Placeholder for legend
              ShimmerWidget.rectangular(
                height: screenHeightPortion(context, 0.25),
                width: screenWidthPortion(context, 0.43),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShimmerWidget extends StatelessWidget {
  final double height;
  final double width;
  final BoxShape shape;

  const ShimmerWidget.rectangular({
    required this.height,
    required this.width,
  }) : shape = BoxShape.rectangle;

  const ShimmerWidget.circular({
    required this.height,
    required this.width,
  }) : shape = BoxShape.circle;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: shape,
          borderRadius:
              shape == BoxShape.rectangle ? BorderRadius.circular(8) : null,
        ),
      ),
    );
  }
}
