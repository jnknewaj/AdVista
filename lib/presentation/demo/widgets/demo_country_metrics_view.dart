import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/presentation/demo/pages/demo_country_list_page.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:advista/utils/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final demoMetricsTitleNotifierProvider =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier());

class DemoCountryMetricsView extends ConsumerWidget {
  const DemoCountryMetricsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsTitle = ref.watch(demoMetricsTitleNotifierProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Countrywise Data",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 5),
          MetricsHorizontalList(
            metricsTitle: metricsTitle,
            onEarningsTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.earnings);
            },
            onImpressionTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.impression);
            },
            onReqTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.requests);
            },
            onClicksTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.clicks);
            },
            oneCPMTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.eCPM);
            },
            oneMatchRateTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider.notifier)
                  .setMetricsTitle(MetricsTitle.matchRate);
            },
          ),
          const SizedBox(height: 8),
          CountryDataWidget(
            countryDataList: const [
              CountryMetrics(
                country: 'AU',
                metrics: Metrics(
                  earnings: 3.78,
                  impression: 25,
                  requests: 28,
                  matchRate: 87.78,
                  clicks: 1,
                  eCPM: 29.98,
                  showRate: 90.98,
                  cTR: 40.0,
                ),
              ),
              CountryMetrics(
                country: 'US',
                metrics: Metrics(
                  earnings: 10.23,
                  impression: 259,
                  requests: 280,
                  matchRate: 89.78,
                  clicks: 3,
                  eCPM: 40.38,
                  showRate: 90.93,
                  cTR: 11.29,
                ),
              ),
            ],
            metricsTitle: metricsTitle,
            timeRange: TimeRange.today,
          ),
          Align(
            alignment: Alignment.center,
            child: SimpleButton(
              text: 'Show All',
              onPressed: () {
                navigateTo(context, const DemoCountryListPage());
              },
              primaryColor: Theme.of(context).primaryColor,
              secondaryColor: Theme.of(context).buttonTheme.secondaryColor,
              fill: false,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
