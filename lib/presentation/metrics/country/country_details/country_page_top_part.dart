import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/presentation/metrics/widgets/clip_card.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountryPageTopWidget extends ConsumerWidget {
  const CountryPageTopWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeRange = ref.watch(timeRangeProviderForCountryPage);
    final notifier = ref.watch(timeRangeProviderForCountryPage.notifier);
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
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requsted());
                  },
                ),
                ClipCard(
                  text: 'Yesterday',
                  isActive: timeRange.range == TimeRange.yesterday,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.yesterday);
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedYesterday());
                  },
                ),
                ClipCard(
                  text: 'Last 7 Days',
                  isActive: timeRange.range == TimeRange.last7Days,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.last7Days);
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requsted7days());
                  },
                ),
                ClipCard(
                  text: 'This Month',
                  isActive: timeRange.range == TimeRange.thisMonth,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.thisMonth);
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedThisMonth());
                  },
                ),
                ClipCard(
                  text: 'Last Month',
                  isActive: timeRange.range == TimeRange.lastMonth,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.lastMonth);
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedLastMonth());
                  },
                ),
                ClipCard(
                  text: 'This Year',
                  isActive: timeRange.range == TimeRange.thisYear,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.thisYear);
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedThisYear());
                  },
                ),
                ClipCard(
                  text: 'Lifetime',
                  isActive: timeRange.range == TimeRange.lifetime,
                  onTap: () {
                    notifier.setTimeRange(TimeRange.lifetime);
                    context
                        .read<CountryWiseMetricsBloc>()
                        .add(const CountryWiseMetricsEvent.requstedLifeTime());
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
