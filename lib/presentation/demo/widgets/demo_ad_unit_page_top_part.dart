// ignore_for_file: prefer_const_constructors
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/date_range_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final demoTimeRangeProviderForAdUnitPage =
    NotifierProvider.autoDispose<TimeRangeNotifier, TimeRangeState>(
  () => TimeRangeNotifier(
    getIt<DateService>(),
  ),
);

class DemoAdUnitPageTopPart extends ConsumerWidget {
  const DemoAdUnitPageTopPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateRange = ref.watch(demoTimeRangeProviderForAdUnitPage);
    final notifier = ref.watch(demoTimeRangeProviderForAdUnitPage.notifier);
    return Container(
      height: screenHeightPortion(context, 0.09),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: screenHeightPortion(context, 0.06) * 0.85,
            child: DateRangeList(
              notifierKey: 'DemoAdUnitListPage',
              onToday: () {
                notifier.setTimeRange(TimeRange.today);
              },
              onYesterday: () {
                notifier.setTimeRange(TimeRange.yesterday);
              },
              onLastSevenDays: () {
                notifier.setTimeRange(TimeRange.last7Days);
              },
              onThisMonth: () {
                notifier.setTimeRange(TimeRange.thisMonth);
              },
              onLastMonth: () {
                notifier.setTimeRange(TimeRange.lastMonth);
              },
              onThisYear: () {
                notifier.setTimeRange(TimeRange.thisYear);
              },
              onAllTime: () {
                notifier.setTimeRange(TimeRange.allTime);
              },
              onCustom: () {
                notifier.setTimeRange(TimeRange.today);
                showSnackbar(context, 'Feature Coming Soon!');
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 3, left: 3, right: 8),
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
