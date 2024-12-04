// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:advista/presentation/metrics/country/country_details/country_full_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/country/country_details/country_page_top_part.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/presentation/metrics/widgets/dimension_list.dart';

class CountryDataPage extends StatelessWidget {
  const CountryDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CountryWiseMetricsBloc>()
            ..add(const CountryWiseMetricsEvent.requsted()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CountryWiseMetricsBloc, CountryWiseMetricsState>(
            listener: (context, state) {},
          ),
        ],
        child: _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CountryPageTopWidget(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  DimensionList(notifierKey: 'CountryDataPage'),
                  BlocBuilder<CountryWiseMetricsBloc, CountryWiseMetricsState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => const ShimmerCountryData(),
                        loading: (_) => const ShimmerCountryData(),
                        noDataFound: (_) => const BillBoard(),
                        loaded: (s) {
                          final list = s.metrics;
                          return CountryFullList(list: list);
                        },
                        failed: (f) {
                          return Center(
                            child: BillBoard(
                              text: mapMetricsFailuresToText(f.failures),
                            ),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
