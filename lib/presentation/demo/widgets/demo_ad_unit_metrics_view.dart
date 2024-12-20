import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/presentation/demo/pages/demo_ad_unit_list_page.dart';
import 'package:advista/presentation/metrics/ad_unit/widgets/ad_unit_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:advista/utils/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final demoMetricsTitleNotifierProvider2 =
    NotifierProvider<MetricsTitleNotifier, MetricsTitle>(
        () => MetricsTitleNotifier());

class DemoAdUnitMetricsView extends ConsumerWidget {
  const DemoAdUnitMetricsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsTitle = ref.watch(demoMetricsTitleNotifierProvider2);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Horizontal list view
          Text(
            "Ad Unit Data",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          MetricsHorizontalList(
            metricsTitle: metricsTitle,
            onEarningsTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider2.notifier)
                  .setMetricsTitle(MetricsTitle.earnings);
            },
            onImpressionTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider2.notifier)
                  .setMetricsTitle(MetricsTitle.impression);
            },
            onReqTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider2.notifier)
                  .setMetricsTitle(MetricsTitle.requests);
            },
            onClicksTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider2.notifier)
                  .setMetricsTitle(MetricsTitle.clicks);
            },
            oneCPMTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider2.notifier)
                  .setMetricsTitle(MetricsTitle.eCPM);
            },
            oneMatchRateTap: () {
              ref
                  .read(demoMetricsTitleNotifierProvider2.notifier)
                  .setMetricsTitle(MetricsTitle.matchRate);
            },
          ),
          const SizedBox(height: 8),
          AdUnitDataWidget(
            adUnitDataList: const [
              AdUnitMetrics(
                adUnitId: 'CA-App-Pub-61836183',
                adUnitType: 'WW3Banner',
                metrics: Metrics(
                  earnings: 2.3,
                  impression: 22,
                  requests: 23,
                  matchRate: 99,
                  clicks: 0,
                  eCPM: 23,
                  showRate: 98,
                  cTR: 0,
                ),
              ),
              AdUnitMetrics(
                adUnitId: 'CA-App-Pub-2972397',
                adUnitType: 'WW3Interstitial',
                metrics: Metrics(
                  earnings: 12.3,
                  impression: 7,
                  requests: 11,
                  matchRate: 79,
                  clicks: 2,
                  eCPM: 23,
                  showRate: 98,
                  cTR: 35,
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
                navigateTo(context, const DemoAdUnitListPage());
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
