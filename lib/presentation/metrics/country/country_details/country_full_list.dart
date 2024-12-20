import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/country_name_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountryFullList extends ConsumerWidget {
  final List<CountryMetrics> list;
  const CountryFullList({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensionTitle = ref.watch(titleProvider('CountryDataPage'));
    final sortedList = sortCountryMetricsList(dimensionTitle, list);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final data = sortedList[index];
        return ListTile(
          leading: Text(
            getFlagEmoji(data.country),
            style: const TextStyle(fontSize: 40),
          ),
          title: Text(getCountryName(data.country)),
          trailing: Text(
            mapCountryMetricsToData(dimensionTitle, data),
            style: const TextStyle(fontSize: 20),
          ),
        );
      },
    );
  }
}
