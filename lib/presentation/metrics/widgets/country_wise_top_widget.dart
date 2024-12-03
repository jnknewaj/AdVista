import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountryWiseTopWidget extends ConsumerWidget {
  const CountryWiseTopWidget({
    super.key,
    required this.metricsTitle,
  });

  final MetricsTitle metricsTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    cprint('HEIGHT', MediaQuery.of(context).size.height.toString());
    return Container(
      color: Colors.blue,
      height: screenHeightPortion(context, .06),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ClipCard(
            text: 'Earnings',
            isActive: metricsTitle == MetricsTitle.earnings,
            onTap: () {
              ref
                  .read(metricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.earnings);
            },
          ),
          ClipCard(
            text: 'Impression',
            isActive: metricsTitle == MetricsTitle.impression,
            onTap: () {
              ref
                  .read(metricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.impression);
            },
          ),
          ClipCard(
            text: 'Requests',
            isActive: metricsTitle == MetricsTitle.requests,
            onTap: () {
              ref
                  .read(metricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.requests);
            },
          ),
          ClipCard(
            text: 'Clicks',
            isActive: metricsTitle == MetricsTitle.clicks,
            onTap: () {
              ref
                  .read(metricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.clicks);
            },
          ),
          ClipCard(
            text: 'eCPM',
            isActive: metricsTitle == MetricsTitle.eCPM,
            onTap: () {
              ref
                  .read(metricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.eCPM);
            },
          ),
          ClipCard(
            text: 'Match Rate',
            isActive: metricsTitle == MetricsTitle.matchRate,
            onTap: () {
              ref
                  .read(metricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.matchRate);
            },
          ),
        ],
      ),
    );
  }
}
