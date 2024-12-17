import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/presentation/charts/country/widgets/legend_item.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AdUnitPieChart extends StatelessWidget {
  const AdUnitPieChart({
    required this.metricsList,
    required this.selectedMetrics,
    required this.title,
  });

  final List<AdUnitMetrics> metricsList;
  final ValueNotifier<MetricsTitle> selectedMetrics;
  final String title;

  @override
  Widget build(BuildContext context) {
    double Function(AdUnitMetrics) valueExtractor;
    switch (selectedMetrics.value) {
      case MetricsTitle.impression:
        valueExtractor = (m) => m.metrics.impression.toDouble();
        break;
      case MetricsTitle.requests:
        valueExtractor = (m) => m.metrics.requests.toDouble();
        break;
      case MetricsTitle.clicks:
        valueExtractor = (m) => m.metrics.clicks.toDouble();
        break;
      case MetricsTitle.eCPM:
        valueExtractor = (m) => m.metrics.eCPM;
        break;
      case MetricsTitle.matchRate:
        valueExtractor = (m) => m.metrics.matchRate;
        break;
      default:
        valueExtractor = (m) => m.metrics.earnings;
    }

    // Sort the metricsList by the selected metric in descending order
    final sortedList = metricsList.toList()
      ..sort((a, b) => valueExtractor(b).compareTo(valueExtractor(a)));

    // Keep the top 5 and sum the rest into an "Others" category
    final top5 = sortedList.take(5).toList();
    final othersValue = sortedList.skip(5).fold<double>(
          0.0,
          (sum, item) => sum + valueExtractor(item),
        );

    // Calculate the total value
    final totalValue = metricsList.fold<double>(
      0.0,
      (sum, item) => sum + valueExtractor(item),
    );

    final pieChartSections = top5.map(
      (countryMetric) {
        final value = valueExtractor(countryMetric);
        final isIntegerMetric =
            selectedMetrics.value == MetricsTitle.impression ||
                selectedMetrics.value == MetricsTitle.requests ||
                selectedMetrics.value == MetricsTitle.clicks;
        return PieChartSectionData(
          color: _getColorForCountry(countryMetric.adUnitId),
          value: value,
          title: isIntegerMetric
              ? '${value.toInt()}'
              : '${value.toStringAsFixed(1)}', // Conditional formatting
          radius: 50, // Customize as needed
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        );
      },
    ).toList();

    if (othersValue > 0) {
      final isIntegerMetric =
          selectedMetrics.value == MetricsTitle.impression ||
              selectedMetrics.value == MetricsTitle.requests ||
              selectedMetrics.value == MetricsTitle.clicks;
      pieChartSections.add(
        PieChartSectionData(
          color: Colors.grey,
          value: othersValue,
          title: isIntegerMetric
              ? '${othersValue.toInt()}'
              : '${othersValue.toStringAsFixed(1)}', // Conditional formatting
          radius: 50, // Customize as needed
          titleStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    final legendItems = top5.map((adUnitMetric) {
      final value = valueExtractor(adUnitMetric);
      final percentage = ((value / totalValue) * 100).toStringAsFixed(1);
      return LegendItem(
        title: truncateString(adUnitMetric.adUnitType, 12),
        color: _getColorForCountry(adUnitMetric.adUnitId),
        percentage: percentage,
      );
    }).toList();

    if (othersValue > 0) {
      legendItems.add(
        LegendItem(
          title: 'Others',
          color: Colors.grey,
          percentage: ((othersValue / totalValue) * 100).toStringAsFixed(1),
        ),
      );
    }

    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.15),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Allow the column to wrap its children
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Pie chart
              SizedBox(
                height: screenHeightPortion(context, 0.25), // Adjust if needed
                width: screenWidthPortion(context, 0.40),
                child: PieChart(
                  PieChartData(
                    sections: pieChartSections,
                    centerSpaceRadius: 30,
                    sectionsSpace: 2,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  alignment: Alignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: legendItems.length,
                    itemBuilder: (context, index) {
                      final item = legendItems[index];
                      return LegendTile(item: item);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Assign a unique color for each country
  Color _getColorForCountry(String country) {
    final index = country.hashCode % colorsForPieChart.length;
    return colorsForPieChart[index];
  }
}
