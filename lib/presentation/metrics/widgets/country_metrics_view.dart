// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/presentation/metrics/pages/metrics_page.dart';
import 'package:advista/presentation/metrics/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/widgets/country_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/country_wise_top_widget.dart';
import 'package:advista/presentation/metrics/widgets/list_item.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
              // Horizontal list view
              const Text(
                "Countrywise Data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              CountryWiseTopWidget(metricsTitle: metricsTitle),
              const SizedBox(height: 8),

              state.map(
                initial: (_) => const ShimmerCountryData(),
                loading: (_) => const ShimmerCountryData(),
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
              // Button to navigate
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation logic here
                  },
                  child: const Text('Show All'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
