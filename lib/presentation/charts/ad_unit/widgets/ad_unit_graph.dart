import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/presentation/charts/ad_unit/widgets/ad_unit_pie_chart.dart';
import 'package:advista/presentation/charts/country/widgets/shimmer_pie_chart.dart';
import 'package:advista/presentation/metrics/ad_unit/widgets/ad_unit_metrics_view.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdUnitGraph extends StatefulWidget {
  final ValueNotifier<MetricsTitle> selectedMetrics;
  final String title;
  final TimeRange timeRange;
  const AdUnitGraph(
    this.selectedMetrics,
    this.title,
    this.timeRange,
  );

  @override
  State<AdUnitGraph> createState() => _AdUnitGraphState();
}

class _AdUnitGraphState extends State<AdUnitGraph>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AdUnitMetricsBloc, AdUnitMetricsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const ShimmerPieChart();
        }
        final error = mapAdUnitMetricsToError(widget.timeRange, state);
        if (error == null) {
          final metricsList =
              mapTimeRangeToAdUnitMetrics(widget.timeRange, state);
          if (metricsList == null) {
            return const BillBoard(text: "No Data Available");
          } else {
            return AdUnitPieChart(
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
        //     return AdUnitPieChart(
        //       title: widget.title,
        //       metricsList: metricsList,
        //       selectedMetrics: widget.selectedMetrics,
        //     );
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
