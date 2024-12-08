import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/ad_list_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/styles/theme.dart';
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
    final sortedList = sortAdUnitMetricsList(metricsTitle, adUnitDataList);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: showAllButton ? 3 : adUnitDataList.length,
          itemBuilder: (context, index) {
            final data = sortedList[index];
            return ListTile(
              title: Text(
                data.adUnitType,
                style: const TextStyle(fontSize: 16),
              ),
              subtitle: Text(data.adUnitId),
              trailing: Text(
                _mapTitleToData(metricsTitle, data),
                style: const TextStyle(fontSize: 20),
              ),
            );
          },
        ),
        if (showAllButton)
          SimpleButton(
            text: 'Show All',
            onPressed: () {
              navigateTo(context, const AdUnitListPage());
            },
            primaryColor: Theme.of(context).primaryColor,
            secondaryColor: Theme.of(context).buttonTheme.secondaryColor,
            fill: false,
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
