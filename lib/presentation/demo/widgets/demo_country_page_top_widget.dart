import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final demoTimeRangeProviderForCountryPage =
    NotifierProvider.autoDispose<TimeRangeNotifier, TimeRangeState>(
  () => TimeRangeNotifier(
    getIt<DateService>(),
  ),
);

class DemoCountryPageTopWidget extends ConsumerWidget {
  const DemoCountryPageTopWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeRange = ref.watch(demoTimeRangeProviderForCountryPage);
    final notifier = ref.watch(demoTimeRangeProviderForCountryPage.notifier);
    return Container(
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
                ClipCard(
                  text: 'Today',
                  isActive: timeRange.range == TimeRange.today,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.today);
                  },
                ),
                ClipCard(
                  text: 'Yesterday',
                  isActive: timeRange.range == TimeRange.yesterday,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.yesterday);
                  },
                ),
                ClipCard(
                  text: 'Last 7 Days',
                  isActive: timeRange.range == TimeRange.last7Days,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.last7Days);
                  },
                ),
                ClipCard(
                  text: 'This Month',
                  isActive: timeRange.range == TimeRange.thisMonth,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.thisMonth);
                  },
                ),
                ClipCard(
                  text: 'Last Month',
                  isActive: timeRange.range == TimeRange.lastMonth,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.lastMonth);
                  },
                ),
                ClipCard(
                  text: 'This Year',
                  isActive: timeRange.range == TimeRange.thisYear,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.thisYear);
                  },
                ),
                ClipCard(
                  text: 'Lifetime',
                  isActive: timeRange.range == TimeRange.allTime,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.allTime);
                  },
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 3, left: 3, right: 8),
            child: Text(
              timeRange.dateRange,
              style: TextStyle(
                color: Theme.of(context).primaryColor, // check if color suits
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
