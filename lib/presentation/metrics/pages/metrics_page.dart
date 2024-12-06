import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/ad_unit/widgets/ad_unit_metrics_view.dart';
import 'package:advista/presentation/metrics/country/widgets/country_metrics_view.dart';
import 'package:advista/presentation/metrics/summary/widgets/dashboard_top_part.dart';
import 'package:advista/presentation/metrics/summary/widgets/metrics_summary_view.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MetricsPage extends StatelessWidget {
  const MetricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return getIt<TodaysMetricsBloc>()
              ..add(const TodaysMetricsEvent.requsted());
          },
        ),
        BlocProvider(
          create: (context) {
            return getIt<CountryWiseMetricsBloc>()
              ..add(const CountryWiseMetricsEvent.requsted());
          },
        ),
        BlocProvider(
          create: (context) => getIt<AdUnitMetricsBloc>()
            ..add(const AdUnitMetricsEvent.requsted()),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AdVista'),
          centerTitle: true,
        ),
        body: const _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TodaysMetricsBloc, TodaysMetricsState>(
          listener: (context, state) {
            state.maybeMap(
              loaded: (_) {},
              failed: (f) {
                final text = f.failures.maybeMap(
                  networkFailure: (e) => e.msg,
                  timeout: (e) => e.msg,
                  parsingFailure: (e) => e.msg,
                  tokenNotFound: (e) => e.msg,
                  serverFailure: (e) => e.msg,
                  idNotFound: (e) => e.msg,
                  unknown: (e) => e.msg,
                  orElse: () => "Unknown, probably from Country dimension",
                );
                showSnackbar(context, text);
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<CountryWiseMetricsBloc, CountryWiseMetricsState>(
          listener: (context, state) {},
        ),
        BlocListener<AdUnitMetricsBloc, AdUnitMetricsState>(
          listener: (context, state) {},
        )
      ],
      child: SafeArea(
        child: Column(
          children: [
            const DashboardTopPart(),
            Expanded(
              child: ListView(
                children: const [
                  MetricsSummaryView(),
                  Divider(),
                  CountryMetricsView(),
                  Divider(),
                  AdUnitMetricsView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
