import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerChartSevenDays extends StatelessWidget {
  const ShimmerChartSevenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeightPortion(context, 0.45),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(7, (index) {
                  return Container(
                    width: 20,
                    height: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    color: Colors.white,
                  );
                }),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(7, (index) {
                return Container(
                  width: 30,
                  height: 10,
                  color: Colors.white,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
