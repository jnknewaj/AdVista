// ignore_for_file: prefer_const_constructors

import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardTopPart extends ConsumerWidget {
  final String text;
  const DashboardTopPart({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeRange = ref.watch(timeRangeProvider);
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
              children: [
                TimeRangeItem(
                  text: 'Today',
                  isActive: timeRange == TimeRange.today,
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.today);
                  },
                ),
                TimeRangeItem(
                  isActive: timeRange == TimeRange.yesterday,
                  text: 'Yesterday',
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.yesterday);
                  },
                ),
                TimeRangeItem(
                  isActive: timeRange == TimeRange.last7Days,
                  text: 'Last 7 Days',
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.last7Days);
                  },
                ),
                TimeRangeItem(
                  isActive: timeRange == TimeRange.thisMonth,
                  text: 'This Month',
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.thisMonth);
                  },
                ),
                TimeRangeItem(
                  isActive: timeRange == TimeRange.lastMonth,
                  text: 'Last Month',
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.lastMonth);
                  },
                ),
                TimeRangeItem(
                  isActive: timeRange == TimeRange.thisYear,
                  text: 'This Year',
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.thisYear);
                  },
                ),
                TimeRangeItem(
                  isActive: timeRange == TimeRange.lifetime,
                  text: 'Lifetime',
                  onTap: () {
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.lifetime);
                  },
                ),
                TimeRangeItem(
                  text: 'Custom',
                ),
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
