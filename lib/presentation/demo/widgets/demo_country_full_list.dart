import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/demo/dummy_data/dummy_data.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/country_name_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DemoCountryFullList extends ConsumerWidget {
  final _data = [
    const CountryMetrics(
      country: 'AU',
      metrics: dLast7DaysMetrics,
    ),
    const CountryMetrics(
      country: 'US',
      metrics: dThisMonthMetrics,
    ),
    const CountryMetrics(
      country: 'SL',
      metrics: dTodayMetrics,
    ),
    const CountryMetrics(
      country: 'KR',
      metrics: dYesterdayMetrics,
    ),
    const CountryMetrics(
      country: 'NZ',
      metrics: dLastMonthMetrics,
    ),
    const CountryMetrics(
      country: 'BD',
      metrics: Metrics(
        earnings: 1.23,
        impression: 11539,
        requests: 28320,
        matchRate: 40.75,
        clicks: 2,
        eCPM: 00.11,
        showRate: 40.74,
        cTR: 0.02,
      ),
    ),
  ];

  DemoCountryFullList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensionTitle = ref.watch(titleProvider('DemoCountryListPage'));
    final sortedList = sortCountryMetricsList(dimensionTitle, _data);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _data.length,
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
