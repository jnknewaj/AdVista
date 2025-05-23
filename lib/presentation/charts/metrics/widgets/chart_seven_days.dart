import 'package:advista/application/metrics/metrics_with_date/metrics_with_date_bloc.dart';
import 'package:advista/presentation/charts/metrics/widgets/bar_chart_fpr_metrics.dart';
import 'package:advista/presentation/charts/metrics/widgets/line_chart_for_metrics.dart';
import 'package:advista/presentation/charts/metrics/widgets/shimmer_chart_seven_days.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/map.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ChartType {
  barChart,
  lineChart,
}

class ChartSevenDays extends StatelessWidget {
  const ChartSevenDays(
    this.selectedMetrics, {
    this.chartType,
  });
  final ValueNotifier<MetricsTitle> selectedMetrics;
  final ChartType? chartType;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetricsWithDateBloc, MetricsWithDateState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const ShimmerChartSevenDays(),
          loading: (_) => const ShimmerChartSevenDays(),
          loaded: (s) {
            final metricsList = s.data;

            if (chartType == ChartType.lineChart) {
              return LineChartForMetrics(
                metricsList: metricsList,
                selectedMetrics: selectedMetrics,
              );
            }

            return BarChartForMetrics(
              metricsList: metricsList,
              selectedMetrics: selectedMetrics,
            );
          },
          failure: (s) =>
              BillBoard(text: mapMetricsFailuresToString(s.failures)),
        );
      },
    );
  }
}
