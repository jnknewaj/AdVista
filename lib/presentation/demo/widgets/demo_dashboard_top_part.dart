import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final demoTimeRangeProvider =
    NotifierProvider.autoDispose<TimeRangeNotifier, TimeRangeState>(
  () => TimeRangeNotifier(
    getIt<DateService>(),
  ),
);

class DemoDashboardTopPart extends ConsumerWidget {
  const DemoDashboardTopPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateRange = ref.watch(demoTimeRangeProvider);
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
                  isActive: dateRange.range == TimeRange.today,
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.today);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.yesterday,
                  text: 'Yesterday',
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.yesterday);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.last7Days,
                  text: 'Last 7 Days',
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.last7Days);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.thisMonth,
                  text: 'This Month',
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.thisMonth);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.lastMonth,
                  text: 'Last Month',
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.lastMonth);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.thisYear,
                  text: 'This Year',
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.thisYear);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.allTime,
                  text: 'Lifetime',
                  onTap: () {
                    ref
                        .read(demoTimeRangeProvider.notifier)
                        .setTimeRange(TimeRange.allTime);
                  },
                ),
                ClipCard(
                  text: 'Custom',
                  isActive: dateRange.range == TimeRange.custom,
                  onTap: () async {
                    final dateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2010),
                      lastDate: DateTime.now(),
                    );

                    if (dateRange != null) {
                      ref.read(demoTimeRangeProvider.notifier).setTimeRange(
                            TimeRange.custom,
                            dateTimeRange: dateRange,
                          );
                    }
                  },
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 3, left: 3, right: 8),
            child: Text(
              dateRange.dateRange,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
