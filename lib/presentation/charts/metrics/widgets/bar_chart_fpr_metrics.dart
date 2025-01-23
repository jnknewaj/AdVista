import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartForMetrics extends StatelessWidget {
  const BarChartForMetrics({
    required this.metricsList,
    required this.selectedMetrics,
  });

  final List<MetricsWithDate> metricsList;
  final ValueNotifier<MetricsTitle> selectedMetrics;

  @override
  Widget build(BuildContext context) {
    // Map selectedMetrics to the corresponding value extractor
    double Function(MetricsWithDate) valueExtractor;
    switch (selectedMetrics.value) {
      case MetricsTitle.impression:
        valueExtractor = (m) => m.impressions.toDouble();
        break;
      case MetricsTitle.requests:
        valueExtractor = (m) => m.requests.toDouble();
        break;
      case MetricsTitle.clicks:
        valueExtractor = (m) => m.clicks.toDouble();
        break;
      case MetricsTitle.eCPM:
        valueExtractor = (m) => m.eCPM;
        break;
      case MetricsTitle.matchRate:
        valueExtractor = (m) => m.matchRate;
        break;
      default:
        valueExtractor = (m) => m.earnings;
    }

    // Compute max value and scaling factor based on the selected metric
    final maxValue = findMaxForMatricsWithDate(metricsList, valueExtractor);
    final scalingFactor = maxValue < 0.01 ? 1e6 : (maxValue < 1 ? 1e3 : 1);
    final adjustedMaxY = (maxValue * scalingFactor).ceilToDouble();

    return SizedBox(
      height: screenHeightPortion(context, 0.45),
      child: BarChart(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.ease,
        BarChartData(
          minY: 0,
          maxY: adjustedMaxY,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          barGroups: List.generate(
            metricsList.length,
            (index) {
              final theValue = valueExtractor(metricsList[index]);
              return BarChartGroupData(
                showingTooltipIndicators: [0],
                x: index,
                barRods: [
                  BarChartRodData(
                    toY: theValue * scalingFactor,
                    width: 10,
                    borderRadius: BorderRadius.zero,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              );
            },
          ),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                interval: adjustedMaxY > 0 ? adjustedMaxY / 5 : 1,
                showTitles: true,
                reservedSize: 60,
                getTitlesWidget: (value, meta) {
                  final displayValue = value / scalingFactor;

                  // Check the selected metric and format accordingly
                  if (selectedMetrics.value == MetricsTitle.earnings ||
                      selectedMetrics.value == MetricsTitle.eCPM ||
                      selectedMetrics.value == MetricsTitle.matchRate) {
                    return Text(
                      displayValue < 0.01
                          ? displayValue.toStringAsExponential(
                              2) // Use exponential format for tiny values
                          : displayValue.toStringAsFixed(
                              2), // Use fixed-point notation for larger earnings values
                    );
                  } else {
                    // For other metrics (like impressions, requests), show integer values
                    return Text(
                      displayValue < 1
                          ? displayValue.toStringAsFixed(0)
                          : displayValue.roundToDouble().toStringAsFixed(0),
                    );
                  }
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  int index = value.toInt();
                  if (index >= 0 && index < metricsList.length) {
                    final date = metricsList[index].date;
                    return Text(
                      formatDateString(date),
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    );
                  }
                  return const Text('');
                },
              ),
            ),
          ),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                return BarTooltipItem(
                  selectedMetrics.value == MetricsTitle.earnings
                      ? (rod.toY / scalingFactor).toStringAsFixed(3)
                      : (rod.toY / scalingFactor).toStringAsFixed(0),
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// class BarChartForMetricsTwo extends StatelessWidget {
//   const BarChartForMetricsTwo({
//     required this.metricsList,
//     required this.selectedMetrics,
//   });

//   final List<MetricsWithDate> metricsList;
//   final ValueNotifier<MetricsTitle> selectedMetrics;

//   @override
//   Widget build(BuildContext context) {
//     double Function(MetricsWithDate) valueExtractor;
//     switch (selectedMetrics.value) {
//       case MetricsTitle.impression:
//         valueExtractor = (m) => m.impressions.toDouble();
//         break;
//       case MetricsTitle.requests:
//         valueExtractor = (m) => m.requests.toDouble();
//         break;
//       case MetricsTitle.clicks:
//         valueExtractor = (m) => m.clicks.toDouble();
//         break;
//       case MetricsTitle.eCPM:
//         valueExtractor = (m) => m.eCPM;
//         break;
//       case MetricsTitle.matchRate:
//         valueExtractor = (m) => m.matchRate;
//         break;
//       default:
//         valueExtractor = (m) => m.earnings;
//     }

//     final chartData = metricsList
//         .map((metric) => ChartData(
//               date: metric.date,
//               value: valueExtractor(metric),
//             ))
//         .toList();

//     return SizedBox(
//       height: screenHeightPortion(context, 0.45),
//       child: SfCartesianChart(
//         plotAreaBorderWidth: 0,
//         primaryXAxis: const CategoryAxis(
//           title: AxisTitle(text: 'Date'),
//           majorGridLines: MajorGridLines(width: 0),
//           labelRotation: -45,
//         ),
//         primaryYAxis: NumericAxis(
//           title: AxisTitle(text: selectedMetrics.value.name),
//           interval: calculateInterval(chartData),
//           labelFormat: '{value}',
//           majorTickLines: const MajorTickLines(size: 0),
//         ),
//         title: const ChartTitle(text: 'Metrics Over Time'),
//         tooltipBehavior: TooltipBehavior(enable: true),
//         series: <CartesianSeries<dynamic, dynamic>>[
//           ColumnSeries<dynamic, dynamic>(
//             dataSource: chartData,
//             xValueMapper: (data, _) => formatDateString(data.date),
//             yValueMapper: (data, _) => data.value,
//             dataLabelSettings: const DataLabelSettings(isVisible: true),
//             gradient: LinearGradient(
//               colors: [
//                 Theme.of(context).primaryColor.withOpacity(0.5),
//                 Theme.of(context).primaryColor,
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//         ],
//         zoomPanBehavior: ZoomPanBehavior(
//           enablePanning: true,
//           enablePinching: true,
//         ),
//       ),
//     );
//   }

//   double calculateInterval(List<ChartData> chartData) {
//     final maxValue =
//         chartData.map((data) => data.value).reduce((a, b) => a > b ? a : b);
//     return maxValue / 5;
//   }
// }

// class ChartData {
//   final String date;
//   final double value;

//   ChartData({required this.date, required this.value});
// }
