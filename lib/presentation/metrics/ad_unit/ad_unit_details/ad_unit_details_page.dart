import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/ad_unit_full_list.dart';
import 'package:advista/presentation/metrics/ad_unit/ad_unit_details/ad_unit_page_top_part.dart';
import 'package:advista/presentation/metrics/widgets/dimension_list.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';

class AdUnitDetailsPage extends StatelessWidget {
  const AdUnitDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdUnitMetricsBloc>()
            ..add(const AdUnitMetricsEvent.requsted()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AdUnitMetricsBloc, AdUnitMetricsState>(
            listener: (context, state) {},
          )
        ],
        child: const _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ad Units'), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            const AdUnitPageTopPart(),
            const DimensionList(notifierKey: 'AdUnitDetailsPage'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  BlocBuilder<AdUnitMetricsBloc, AdUnitMetricsState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => const ShimmerCountryData(),
                        loading: (_) => const ShimmerCountryData(),
                        noDataFound: (_) => const BillBoard(),
                        loaded: (s) {
                          final list = s.metrics;
                          return AdUnitFullList(list: list);
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
