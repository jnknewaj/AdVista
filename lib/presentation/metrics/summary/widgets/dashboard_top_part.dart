import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardTopPart extends ConsumerWidget {
  /// Used in [MetricsPage]
  const DashboardTopPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateRange = ref.watch(timeRangeProvider);
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
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requsted());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requsted());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requsted());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.today);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.yesterday,
                  text: 'Yesterday',
                  onTap: () {
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requstedYesterday());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedYesterday());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requstedYesterday());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.yesterday);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.last7Days,
                  text: 'Last 7 Days',
                  onTap: () {
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requsted7days());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requsted7days());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requsted7days());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.last7Days);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.thisMonth,
                  text: 'This Month',
                  onTap: () {
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requstedThisMonth());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedThisMonth());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requstedThisMonth());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.thisMonth);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.lastMonth,
                  text: 'Last Month',
                  onTap: () {
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requstedLastMonth());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedLastMonth());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requstedLastMonth());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.lastMonth);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.thisYear,
                  text: 'This Year',
                  onTap: () {
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requstedThisYear());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedThisYear());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requstedThisYear());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.thisYear);
                  },
                ),
                ClipCard(
                  isActive: dateRange.range == TimeRange.lifetime,
                  text: 'Lifetime',
                  onTap: () {
                    context
                        .read<TodaysMetricsBloc>()
                        .add(const TodaysMetricsEvent.requstedLifeTime());
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedLifeTime());
                    context
                        .read<AdUnitMetricsBloc>()
                        .add(const AdUnitMetricsEvent.requstedLifeTime());
                    ref
                        .read(timeRangeProvider.notifier)
                        .setTimeRange(TimeRange.lifetime);
                  },
                ),
                const ClipCard(text: 'Custom'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 3, left: 3, right: 8),
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
