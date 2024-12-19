import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/charts/country/widgets/country_pie_chart.dart';
import 'package:advista/presentation/charts/country/widgets/shimmer_pie_chart.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryGraph extends StatefulWidget {
  final ValueNotifier<MetricsTitle> selectedMetrics;
  final String title;
  const CountryGraph(
    this.selectedMetrics,
    this.title,
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
        return SizedBox();
        // return state.map(
        //   initial: (_) => const ShimmerPieChart(),
        //   loading: (_) => const ShimmerPieChart(),
        //   loaded: (s) {
        //     final metricsList = s.metrics;
        //     return CountryPieChart(
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
