import 'package:advista/application/metrics/metrics_with_date/metrics_with_date_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/charts/metrics/widgets/bar_chart_fpr_metrics.dart';
import 'package:advista/presentation/charts/metrics/widgets/shimmer_chart_seven_days.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartSevenDays extends StatelessWidget {
  const ChartSevenDays(this.selectedMetrics, {super.key});
  final ValueNotifier<MetricsTitle> selectedMetrics;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetricsWithDateBloc, MetricsWithDateState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const ShimmerChartSevenDays(),
          loading: (_) => const ShimmerChartSevenDays(),
          loaded: (s) {
            final metricsList = s.data;
            cprint('AMM', metricsList[0].toString());
            return BarChartForMetrics(
              metricsList: metricsList,
              selectedMetrics: selectedMetrics,
            );
          },
          failure: (_) => const BillBoard(text: 'Error Loading Chart'),
        );
      },
    );
  }
}
