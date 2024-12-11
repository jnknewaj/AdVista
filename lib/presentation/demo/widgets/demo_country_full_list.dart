import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
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
    const CountryMetrics(
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
    const CountryMetrics(
      country: 'SL',
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
    const CountryMetrics(
      country: 'KR',
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
    const CountryMetrics(
      country: 'NZ',
      metrics: Metrics(
        earnings: 4.23,
        impression: 224,
        requests: 134,
        matchRate: 89.78,
        clicks: 0,
        eCPM: 23.38,
        showRate: 90.93,
        cTR: 11.29,
      ),
    ),
    const CountryMetrics(
      country: 'BD',
      metrics: Metrics(
        earnings: 12.23,
        impression: 25539,
        requests: 28320,
        matchRate: 94.38,
        clicks: 2,
        eCPM: 00.38,
        showRate: 90.93,
        cTR: 11.29,
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
