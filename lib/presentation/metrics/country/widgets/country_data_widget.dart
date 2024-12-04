import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/country/country_details/country_data_page.dart';
import 'package:advista/presentation/metrics/country/widgets/list_item.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/country_name_util.dart';
import 'package:flutter/material.dart';
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
    final bool showAllButton = countryDataList.length > 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: showAllButton ? 3 : countryDataList.length,
          itemBuilder: (context, index) {
            final data = countryDataList[index];
            return ListItem(
              flag: getFlagEmoji(data.country),
              country: getCountryName(data.country),
              value: mapCountryMetricsToData(metricsTitle, data),
            );
          },
        ),
        if (showAllButton)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextButton(
              onPressed: () {
                navigateTo(context, const CountryDataPage());
              },
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
