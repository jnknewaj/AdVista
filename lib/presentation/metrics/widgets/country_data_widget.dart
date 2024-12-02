import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/widgets/list_item.dart';
import 'package:flutter/material.dart';

class CountryDataWidget extends StatelessWidget {
  const CountryDataWidget({
    super.key,
    required this.countryDataList,
    required this.metricsTitle,
  });

  final List<CountryMetrics> countryDataList;
  final MetricsTitle metricsTitle;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: countryDataList.length > 3 ? 3 : countryDataList.length,
      itemBuilder: (context, index) {
        final data = countryDataList[index];
        return ListItem(
          flagUrl: 'item.url',
          country: data.country,
          value: mapTitleToData(metricsTitle, data),
        );
      },
    );
  }
}

String mapTitleToData(
  MetricsTitle title,
  CountryMetrics countryMetrics,
) {
  switch (title) {
    case MetricsTitle.earnings:
      return countryMetrics.metrics.earnings.toStringAsFixed(3);
    case MetricsTitle.impression:
      return countryMetrics.metrics.impression.toString();
    case MetricsTitle.requests:
      return countryMetrics.metrics.requests.toString();
    case MetricsTitle.clicks:
      return countryMetrics.metrics.clicks.toString();
    case MetricsTitle.eCPM:
      return countryMetrics.metrics.eCPM.toStringAsFixed(2);
    case MetricsTitle.matchRate:
      return countryMetrics.metrics.matchRate.toStringAsFixed(2);
    default:
      return 'Unknown CountryMetrics';
  }
}
