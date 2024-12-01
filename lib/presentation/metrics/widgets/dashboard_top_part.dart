// ignore_for_file: prefer_const_constructors

import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';

class DashboardTopPart extends StatelessWidget {
  final String text;
  const DashboardTopPart({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: screenHeightPortion(context, 0.09),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: screenHeightPortion(context, 0.06) * 0.85,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TimeRangeItem(text: 'Today'),
                TimeRangeItem(text: 'Yesterday'),
                TimeRangeItem(text: 'Last 7 Days'),
                TimeRangeItem(text: 'This Month'),
                TimeRangeItem(text: 'Last Month'),
                TimeRangeItem(text: 'This Year'),
                TimeRangeItem(text: 'Lifetime'),
                TimeRangeItem(text: 'Custom'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 3, left: 3, right: 8),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
