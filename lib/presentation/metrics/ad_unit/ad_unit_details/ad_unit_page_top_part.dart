// ignore_for_file: prefer_const_constructors
import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/date_range_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdUnitPageTopPart extends ConsumerWidget {
  const AdUnitPageTopPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateRange = ref.watch(timeRangeProviderForAdUnitPage);
    final notifier = ref.watch(timeRangeProviderForAdUnitPage.notifier);
    return Container(
      height: screenHeightPortion(context, 0.09),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: screenHeightPortion(context, 0.06) * 0.85,
            child: DateRangeList(
              notifierKey: 'AdUnitDetailsPage',
              onToday: () {
                notifier.setTimeRange(TimeRange.today);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requsted());
              },
              onYesterday: () {
                notifier.setTimeRange(TimeRange.yesterday);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requstedYesterday());
              },
              onLastSevenDays: () {
                notifier.setTimeRange(TimeRange.last7Days);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requsted7days());
              },
              onThisMonth: () {
                notifier.setTimeRange(TimeRange.thisMonth);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requstedThisMonth());
              },
              onLastMonth: () {
                notifier.setTimeRange(TimeRange.lastMonth);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requstedLastMonth());
              },
              onThisYear: () {
                notifier.setTimeRange(TimeRange.thisYear);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requstedThisYear());
              },
              onAllTime: () {
                notifier.setTimeRange(TimeRange.allTime);
                context
                    .read<AdUnitMetricsBloc>()
                    .add(AdUnitMetricsEvent.requstedLifeTime());
              },
              onCustom: () {
                notifier.setTimeRange(TimeRange.today);
                showSnackbar(context, 'Feature Coming Soon!'); // TODO
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 3, left: 3, right: 8),
            child: Text(
              dateRange.dateRange,
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
