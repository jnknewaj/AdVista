import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/presentation/charts/country/pages/country_chart_page.dart';
import 'package:advista/presentation/charts/metrics/pages/metrics_chart_page.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountryMetricsView extends ConsumerWidget {
  const CountryMetricsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsTitle = ref.watch(metricsTitleNotifierProvider);
    return BlocBuilder<CountryWiseMetricsBloc, CountryWiseMetricsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Countrywise Data",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'See Chart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onTap: () {
                      navigateTo(context, const CountryChartPage());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
              MetricsHorizontalList(
                metricsTitle: metricsTitle,
                onEarningsTap: () {
                  ref
                      .read(metricsTitleNotifierProvider.notifier)
                      .setMetricsTitle(MetricsTitle.earnings);
                },
                onImpressionTap: () {
                  ref
                      .read(metricsTitleNotifierProvider.notifier)
                      .setMetricsTitle(MetricsTitle.impression);
                },
                onReqTap: () {
                  ref
                      .read(metricsTitleNotifierProvider.notifier)
                      .setMetricsTitle(MetricsTitle.requests);
                },
                onClicksTap: () {
                  ref
                      .read(metricsTitleNotifierProvider.notifier)
                      .setMetricsTitle(MetricsTitle.clicks);
                },
                oneCPMTap: () {
                  ref
                      .read(metricsTitleNotifierProvider.notifier)
                      .setMetricsTitle(MetricsTitle.eCPM);
                },
                oneMatchRateTap: () {
                  ref
                      .read(metricsTitleNotifierProvider.notifier)
                      .setMetricsTitle(MetricsTitle.matchRate);
                },
              ),
              const SizedBox(height: 8),
              state.map(
                initial: (_) => const ShimmerCountryData(),
                loading: (_) => const ShimmerCountryData(),
                noDataFound: (_) => const BillBoard(),
                loaded: (s) {
                  final dataList = s.metrics;
                  return CountryDataWidget(
                    countryDataList: dataList,
                    metricsTitle: metricsTitle,
                  );
                },
                failed: (f) {
                  return Text(f.failures.toString());
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
