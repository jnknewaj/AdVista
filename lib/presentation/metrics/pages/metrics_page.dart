// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/widgets/country_metrics_view.dart';
import 'package:advista/presentation/metrics/widgets/dashboard_top_part.dart';
import 'package:advista/presentation/metrics/widgets/metrics_item.dart';
import 'package:advista/presentation/metrics/widgets/metrics_summary_view.dart';
import 'package:advista/presentation/metrics/widgets/time_range_item.dart';
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
            cprint('CTY', 'BlocProvider 1 created');
            return getIt<TodaysMetricsBloc>()
              ..add(const TodaysMetricsEvent.requsted());
          },
        ),
        BlocProvider(
          create: (context) {
            cprint('CTY', 'BlocProvider 2 created');
            return getIt<CountryWiseMetricsBloc>()
              ..add(const CountryWiseMetricsEvent.requstedYesterday());
          },
        ),
      ],
      child: const Scaffold(body: _Handler()),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TodaysMetricsBloc, TodaysMetricsState>(
          listener: (context, state) {
            state.maybeMap(
              loaded: (_) {
                showSnackbar(context, 'Data Loaded');
              },
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
          listener: (context, state) {
            cprint('CTY', 'listening 2 ${state.toString()}');
          },
          child: Container(),
        )
      ],
      child: SafeArea(
        child: Column(
          children: [
            DashboardTopPart(text: '16 April, 2020'),
            Expanded(
              child: ListView(
                children: [
                  MetricsSummaryView(),
                  const SizedBox(height: 5),
                  const CountryMetricsView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
