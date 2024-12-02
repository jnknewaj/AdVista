// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:advista/presentation/metrics/widgets/list_item.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
import 'package:flutter/material.dart';

class CountryMetricsView extends StatelessWidget {
  final int len = 4;
  const CountryMetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Horizontal list view
          const Text(
            "Countrywise Data",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ClipCard(text: 'Earnings', isActive: true),
                ClipCard(text: 'Impression'),
                ClipCard(text: 'Requests'),
                ClipCard(text: 'Clicks'),
                ClipCard(text: 'eCPM'),
                ClipCard(text: 'Match Rate'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: len > 3 ? 3 : len,
            itemBuilder: (context, index) {
              return ListItem();
            },
          ),
          const SizedBox(height: 16),
          // Button to navigate
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigation logic here
              },
              child: const Text('Show All'),
            ),
          ),
        ],
      ),
    );
  }
}
