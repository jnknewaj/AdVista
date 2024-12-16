import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ChartPageTopPart extends HookWidget {
  const ChartPageTopPart(this.selectedMetrics);
  final ValueNotifier<MetricsTitle> selectedMetrics;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          screenHeightPortion(context, 0.07), // this set height of the clips
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: double.infinity,
      child: MetricsHorizontalList(
        metricsTitle: selectedMetrics.value,
        onEarningsTap: () {
          selectedMetrics.value = MetricsTitle.earnings;
        },
        onImpressionTap: () {
          selectedMetrics.value = MetricsTitle.impression;
        },
        onReqTap: () {
          selectedMetrics.value = MetricsTitle.requests;
        },
        onClicksTap: () {
          selectedMetrics.value = MetricsTitle.clicks;
        },
        oneCPMTap: () {
          selectedMetrics.value = MetricsTitle.eCPM;
        },
        oneMatchRateTap: () {
          selectedMetrics.value = MetricsTitle.matchRate;
        },
      ),
    );
  }
}
