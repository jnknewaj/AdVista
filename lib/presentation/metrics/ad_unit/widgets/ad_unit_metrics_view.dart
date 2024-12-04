// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/pages/metrics_page.dart';
import 'package:advista/presentation/metrics/ad_unit/widgets/ad_unit_data_widget.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/presentation/metrics/country/widgets/list_item.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdUnitMetricsView extends ConsumerWidget {
  const AdUnitMetricsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsTitle = ref.watch(metricsTitleNotifierProvider2);
    return BlocBuilder<AdUnitMetricsBloc, AdUnitMetricsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Horizontal list view
              const Text(
                "Ad Unit Data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              MetricsHorizontalList(
                metricsTitle: metricsTitle,
                onEarningsTap: () {
                  ref
                      .read(metricsTitleNotifierProvider2.notifier)
                      .setMetricsTitle(MetricsTitle.earnings);
                },
                onImpressionTap: () {
                  ref
                      .read(metricsTitleNotifierProvider2.notifier)
                      .setMetricsTitle(MetricsTitle.impression);
                },
                onReqTap: () {
                  ref
                      .read(metricsTitleNotifierProvider2.notifier)
                      .setMetricsTitle(MetricsTitle.requests);
                },
                onClicksTap: () {
                  ref
                      .read(metricsTitleNotifierProvider2.notifier)
                      .setMetricsTitle(MetricsTitle.clicks);
                },
                oneCPMTap: () {
                  ref
                      .read(metricsTitleNotifierProvider2.notifier)
                      .setMetricsTitle(MetricsTitle.eCPM);
                },
                oneMatchRateTap: () {
                  ref
                      .read(metricsTitleNotifierProvider2.notifier)
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
                  return AdUnitDataWidget(
                    adUnitDataList: dataList,
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
