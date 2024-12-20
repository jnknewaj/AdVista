// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:advista/application/metrics/providers/new_date_range_provider.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';

class DateRangeList extends ConsumerWidget {
  final String notifierKey;
  final double? areaHeight;
  final Function() onToday;
  final Function() onYesterday;
  final Function() onLastSevenDays;
  final Function() onThisMonth;
  final Function() onLastMonth;
  final Function() onThisYear;
  final Function() onAllTime;
  final Function() onCustom;

  const DateRangeList({
    super.key,
    required this.notifierKey,
    this.areaHeight,
    required this.onToday,
    required this.onYesterday,
    required this.onLastSevenDays,
    required this.onThisMonth,
    required this.onLastMonth,
    required this.onThisYear,
    required this.onAllTime,
    required this.onCustom,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateRange = ref.watch(newDateRangeProvider(notifierKey));
    final notifier = ref.read(newDateRangeProvider(notifierKey).notifier);
    return SizedBox(
      height: areaHeight ?? screenHeightPortion(context, 0.06),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ClipCard(
            text: 'Today',
            isActive: dateRange.range == TimeRange.today,
            onTap: () {
              onToday();
              notifier.setTimeRange(TimeRange.today);
            },
          ),
          ClipCard(
            text: 'Yesterday',
            isActive: dateRange.range == TimeRange.yesterday,
            onTap: () {
              onYesterday();
              notifier.setTimeRange(TimeRange.yesterday);
            },
          ),
          ClipCard(
            text: 'Last 7 Days',
            isActive: dateRange.range == TimeRange.last7Days,
            onTap: () {
              onLastSevenDays();
              notifier.setTimeRange(TimeRange.last7Days);
            },
          ),
          ClipCard(
            text: 'This Month',
            isActive: dateRange.range == TimeRange.thisMonth,
            onTap: () {
              onThisMonth();
              notifier.setTimeRange(TimeRange.thisMonth);
            },
          ),
          ClipCard(
            text: 'Last Month',
            isActive: dateRange.range == TimeRange.lastMonth,
            onTap: () {
              onLastMonth();
              notifier.setTimeRange(TimeRange.lastMonth);
            },
          ),
          ClipCard(
            text: 'This Year',
            isActive: dateRange.range == TimeRange.thisYear,
            onTap: () {
              onThisYear();
              notifier.setTimeRange(TimeRange.thisYear);
            },
          ),
          ClipCard(
            text: 'All Time',
            isActive: dateRange.range == TimeRange.allTime,
            onTap: () {
              onAllTime();
              notifier.setTimeRange(TimeRange.allTime);
            },
          ),
          ClipCard(
            text: 'Custom',
            isActive: dateRange.range == TimeRange.custom,
            onTap: () {
              onCustom();
              notifier.setTimeRange(TimeRange.custom);
            },
          ),
        ],
      ),
    );
  }
}
