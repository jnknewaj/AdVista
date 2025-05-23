import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/presentation/metrics/country/country_details/country_list_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/country_name_util.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:advista/utils/styles/theme.dart';
import 'package:flutter/material.dart';

class CountryDataWidget extends StatelessWidget {
  const CountryDataWidget({
    super.key,
    required this.countryDataList,
    required this.metricsTitle,
    required this.timeRange,
  });

  final List<CountryMetrics> countryDataList;
  final MetricsTitle metricsTitle;
  final TimeRange timeRange;

  @override
  Widget build(BuildContext context) {
    final bool showAllButton = countryDataList.length > 3;
    final sortedList = sortCountryMetricsList(metricsTitle, countryDataList);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: showAllButton ? 3 : countryDataList.length,
          itemBuilder: (context, index) {
            final data = sortedList[index];
            return ListTile(
              leading: Text(
                getFlagEmoji(data.country),
                style: const TextStyle(fontSize: 40),
              ),
              title: Text(
                getCountryName(data.country),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                mapCountryMetricsToData(metricsTitle, data),
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
        if (showAllButton)
          SimpleButton(
            text: 'Show All',
            onPressed: () {
              navigateTo(context, CountryListPage(timeRange, sortedList));
            },
            primaryColor: Theme.of(context).primaryColor,
            secondaryColor: Theme.of(context).buttonTheme.secondaryColor,
            fill: false,
          ),
      ],
    );
  }
}

String mapCountryMetricsToData(
  MetricsTitle title,
  CountryMetrics countryMetrics,
) {
  switch (title) {
    case MetricsTitle.earnings:
      return '\$${countryMetrics.metrics.earnings.toStringAsFixed(3)}';
    case MetricsTitle.impression:
      return countryMetrics.metrics.impression.toString();
    case MetricsTitle.requests:
      return countryMetrics.metrics.requests.toString();
    case MetricsTitle.clicks:
      return countryMetrics.metrics.clicks.toString();
    case MetricsTitle.eCPM:
      return '\$${countryMetrics.metrics.eCPM.toStringAsFixed(2)}';
    case MetricsTitle.matchRate:
      return '${countryMetrics.metrics.matchRate.toStringAsFixed(2)}\%';
    default:
      return 'Unknown CountryMetrics';
  }
}

String mapAdUnitMetricsToText(
  MetricsTitle title,
  AdUnitMetrics countryMetrics,
) {
  switch (title) {
    case MetricsTitle.earnings:
      return '\$${countryMetrics.metrics.earnings.toStringAsFixed(3)}';
    case MetricsTitle.impression:
      return countryMetrics.metrics.impression.toString();
    case MetricsTitle.requests:
      return countryMetrics.metrics.requests.toString();
    case MetricsTitle.clicks:
      return countryMetrics.metrics.clicks.toString();
    case MetricsTitle.eCPM:
      return '\$${countryMetrics.metrics.eCPM.toStringAsFixed(2)}';
    case MetricsTitle.matchRate:
      return '${countryMetrics.metrics.matchRate.toStringAsFixed(2)}\%';
    default:
      return 'Unknown metrics';
  }
}
