import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/country/widgets/list_item.dart';
import 'package:flutter/material.dart';

class AdUnitDataWidget extends StatelessWidget {
  const AdUnitDataWidget({
    super.key,
    required this.adUnitDataList,
    required this.metricsTitle,
  });

  final List<AdUnitMetrics> adUnitDataList;
  final MetricsTitle metricsTitle;

  @override
  Widget build(BuildContext context) {
    final bool showAllButton = adUnitDataList.length > 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: showAllButton ? 3 : adUnitDataList.length,
          itemBuilder: (context, index) {
            final data = adUnitDataList[index];
            return ListTile(
              title: Text(
                data.adUnitType,
                style: const TextStyle(fontSize: 18),
              ),
              trailing: Text(
                _mapTitleToData(metricsTitle, data),
                style: const TextStyle(fontSize: 20),
              ),
            );
          },
        ),
        if (showAllButton)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12.0),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Show All',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ],
    );
  }
}

String _mapTitleToData(
  MetricsTitle title,
  AdUnitMetrics adUnitMetrics,
) {
  switch (title) {
    case MetricsTitle.earnings:
      return adUnitMetrics.metrics.earnings.toStringAsFixed(3);
    case MetricsTitle.impression:
      return adUnitMetrics.metrics.impression.toString();
    case MetricsTitle.requests:
      return adUnitMetrics.metrics.requests.toString();
    case MetricsTitle.clicks:
      return adUnitMetrics.metrics.clicks.toString();
    case MetricsTitle.eCPM:
      return adUnitMetrics.metrics.eCPM.toStringAsFixed(2);
    case MetricsTitle.matchRate:
      return adUnitMetrics.metrics.matchRate.toStringAsFixed(2);
    default:
      return 'Unknown AdUnitMetrics';
  }
}
