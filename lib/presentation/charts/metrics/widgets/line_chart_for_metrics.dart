import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartForMetrics extends StatelessWidget {
  const LineChartForMetrics({
    required this.metricsList,
    required this.selectedMetrics,
  });

  final List<MetricsWithDate> metricsList;
  final ValueNotifier<MetricsTitle> selectedMetrics;

  @override
  Widget build(BuildContext context) {
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

    final maxValue = findMaxForMatricsWithDate(metricsList, valueExtractor);
    final scalingFactor = maxValue < 0.01 ? 1e6 : (maxValue < 1 ? 1e3 : 1);
    final adjustedMaxY = (maxValue * scalingFactor).ceilToDouble();

    return SizedBox(
      height: screenHeightPortion(context, 0.45),
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: adjustedMaxY,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          lineBarsData: [
            LineChartBarData(
              isCurved: false,
              color: Theme.of(context).primaryColor,
              barWidth: 2,
              spots: List.generate(
                metricsList.length,
                (index) {
                  final theValue = valueExtractor(metricsList[index]);
                  return FlSpot(
                    index.toDouble(),
                    theValue * scalingFactor,
                  );
                },
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.3),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
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
                          ? displayValue.toStringAsExponential(2)
                          : displayValue.toStringAsFixed(2),
                    );
                  } else {
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
                    final year = metricsList[index].date;

                    if (index == 0 || metricsList[index - 1].date != year) {
                      return Text(
                        year,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      );
                    }
                  }
                  return const Text('');
                },
              ),
            ),
          ),
          gridData: const FlGridData(show: true),
          borderData: FlBorderData(show: true),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  return LineTooltipItem(
                    selectedMetrics.value == MetricsTitle.earnings
                        ? (spot.y / scalingFactor).toStringAsFixed(3)
                        : (spot.y / scalingFactor).toStringAsFixed(0),
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }
}
