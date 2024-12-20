import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/presentation/charts/country/widgets/country_pie_chart.dart';
import 'package:advista/presentation/charts/country/widgets/shimmer_pie_chart.dart';
import 'package:advista/presentation/metrics/country/widgets/country_metrics_view.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryGraph extends StatefulWidget {
  final ValueNotifier<MetricsTitle> selectedMetrics;
  final String title;
  final TimeRange timeRange;
  const CountryGraph(
    this.selectedMetrics,
    this.title,
    this.timeRange,
  );

  @override
  State<CountryGraph> createState() => _CountryGraphState();
}

class _CountryGraphState extends State<CountryGraph>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<CountryWiseMetricsBloc, CountryWiseMetricsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const ShimmerPieChart();
        }
        final error = mapCountryMetricStateToError(widget.timeRange, state);
        if (error == null) {
          final metricsList =
              mapTimeRangeToCountryMetrics(widget.timeRange, state);
          if (metricsList == null) {
            return const BillBoard(text: "No Data Available");
          } else {
            return CountryPieChart(
              title: widget.title,
              metricsList: metricsList,
              selectedMetrics: widget.selectedMetrics,
            );
          }
        } else {
          return const BillBoard(text: "Error Loading Data");
        }
        // return state.map(
        //   initial: (_) => const ShimmerPieChart(),
        //   loading: (_) => const ShimmerPieChart(),
        //   loaded: (s) {
        //     final metricsList = s.metrics;
        // return CountryPieChart(
        //   title: widget.title,
        //   metricsList: metricsList,
        //   selectedMetrics: widget.selectedMetrics,
        // );
        //   },
        //   failed: (_) => const BillBoard(text: 'Error Loading Chart'),
        //   noDataFound: (_) => const BillBoard(text: 'No Data Found'),
        // );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
