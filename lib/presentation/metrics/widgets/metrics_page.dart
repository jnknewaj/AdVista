import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
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
            ..add(const TodaysMetricsEvent.requsted7days()),
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
      child: BlocBuilder<TodaysMetricsBloc, TodaysMetricsState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            loaded: (s) {
              final metrics = s.metrics;
              return ListView(
                children: [
                  Text('Earnings : ${metrics.earnings}'),
                  Text('Impression : ${metrics.impression}'),
                  Text('Requests : ${metrics.requests}'),
                  Text('Clicks : ${metrics.clicks}'),
                  Text('Clicks : ${metrics.clicks}'),
                  Text('CPM : ${metrics.eCPM}'),
                ],
              );
            },
            failed: (f) {
              return Center(
                child: Text(f.failures.msg),
              );
            },
          );
        },
      ),
    );
  }
}
