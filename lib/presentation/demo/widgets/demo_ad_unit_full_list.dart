import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/demo/dummy_data/dummy_data.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _data = [
  const AdUnitMetrics(
    adUnitId: 'CA-App-Pub-61836183',
    adUnitType: 'WW3Banner',
    metrics: dWw3BannerData,
  ),
  const AdUnitMetrics(
    adUnitId: 'CA-App-Pub-2972397',
    adUnitType: 'WW3Interstitial',
    metrics: dWW3IntData,
  ),
  const AdUnitMetrics(
    adUnitId: 'CA-App-Pub-2943397',
    adUnitType: 'WW4Interstitial',
    metrics: Metrics(
      earnings: 2.03,
      impression: 17,
      requests: 110,
      matchRate: 15.32,
      clicks: 0,
      eCPM: 23.12,
      showRate: 25.32,
      cTR: 5.33,
    ),
  ),
  const AdUnitMetrics(
    adUnitId: 'CA-App-Pub-38772397',
    adUnitType: 'WW5Interstitial',
    metrics: Metrics(
      earnings: 52.3,
      impression: 3987,
      requests: 11,
      matchRate: 79,
      clicks: 2,
      eCPM: 13.45,
      showRate: 87.48,
      cTR: 12.65,
    ),
  ),
];

class DemoAdUnitFullList extends ConsumerWidget {
  const DemoAdUnitFullList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensionTitle = ref.watch(titleProvider('DemoAdUnitListPage'));
    final sortedList = sortAdUnitMetricsList(dimensionTitle, _data);

    return ListView.builder(
      shrinkWrap: true,
      itemCount: _data.length,
      itemBuilder: (context, index) {
        final data = sortedList[index];
        return ListTile(
          title: Text(
            data.adUnitType,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(data.adUnitId),
          trailing: Text(
            mapAdUnitMetricsToText(dimensionTitle, data),
            style: const TextStyle(fontSize: 20),
          ),
        );
      },
    );
  }
}
