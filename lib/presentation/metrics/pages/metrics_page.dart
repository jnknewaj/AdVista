// ignore_for_file: prefer_const_constructors

import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/metrics/widgets/dashboard_top_part.dart';
import 'package:advista/presentation/metrics/widgets/metrics_item.dart';
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
          create: (context) => getIt<TodaysMetricsBloc>()
            ..add(const TodaysMetricsEvent.requsted()),
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
              failed: (f) {
                final text = f.failures.map(
                  networkFailure: (e) => e.msg,
                  timeout: (e) => e.msg,
                  parsingFailure: (e) => e.msg,
                  tokenNotFound: (e) => e.msg,
                  serverFailure: (e) => e.msg,
                  idNotFound: (e) => e.msg,
                  unknown: (e) => e.msg,
                );
                showSnackbar(context, text);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: SafeArea(
        child: Column(
          children: [
            DashboardTopPart(text: '16 April, 2020'),
            Expanded(
              child: ListView(
                children: [
                  // Section with 2 columns and 6 items
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1.7,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return const MetricsItem(
                          topText: '321',
                          bottomText: 'Impression',
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
