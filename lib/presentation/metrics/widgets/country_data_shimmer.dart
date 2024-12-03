import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCountryData extends StatelessWidget {
  const ShimmerCountryData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3, // Show three shimmer placeholders
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            children: [
              // Flag shimmer
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  width: 40,
                  height: 30,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 8),
              // Country name shimmer
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    height: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Value shimmer
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  width: 50,
                  height: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
