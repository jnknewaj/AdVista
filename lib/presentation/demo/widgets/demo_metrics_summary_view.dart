import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/demo/dummy_data/dummy_data.dart';
import 'package:advista/presentation/metrics/summary/widgets/metrics_item.dart';
import 'package:flutter/material.dart';

class DemoMetricsSummaryView extends StatelessWidget {
  const DemoMetricsSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.7,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return MetricsItem(
            topText: _mapIndexToTopText(
              index,
              const Metrics(
                earnings: 37.27,
                impression: 62758,
                requests: 89595,
                matchRate: 70.05,
                clicks: 35,
                eCPM: 59.39,
                showRate: 70.05,
                cTR: 0.06,
              ),
            ),
            bottomText: _mapIndexToBottomText(index),
          );
        },
      ),
    );
  }
}

String _mapIndexToBottomText(int index) {
  switch (index) {
    case 0:
      return 'Earnings';
    case 1:
      return 'Impression';
    case 2:
      return 'Requests';
    case 3:
      return 'Clicks';
    case 4:
      return 'eCPM';
    case 5:
      return 'Match Rate';
    default:
      return 'Unexpected Index';
  }
}

String _mapIndexToTopText(int index, Metrics metrics) {
  switch (index) {
    case 0:
      return '\$${metrics.earnings.toStringAsFixed(3)}';
    case 1:
      return metrics.impression.toString();
    case 2:
      return metrics.requests.toString();
    case 3:
      return metrics.clicks.toString();
    case 4:
      return metrics.eCPM.toStringAsFixed(2);
    case 5:
      return metrics.matchRate.toStringAsFixed(2);
    default:
      return 'Unexpected Index';
  }
}
