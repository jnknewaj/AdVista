import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdUnitFullList extends ConsumerWidget {
  final List<AdUnitMetrics> list;
  const AdUnitFullList({super.key, required this.list});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensionTitle = ref.watch(titleProvider(
        'AdUnitDetailsPage')); // same key used in [AdUnitListPage]. They should be same as widget name (AdUnitListPage) for uniformity. But ok anyway.
    final sortedList = sortAdUnitMetricsList(dimensionTitle, list);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
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
