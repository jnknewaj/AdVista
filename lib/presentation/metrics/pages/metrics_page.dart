import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/native_ad_widget.dart';
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
        ),
        BlocProvider(
          create: (context) =>
              getIt<NativeAdBloc>()..add(const NativeAdEvent.started()),
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
        BlocListener<NativeAdBloc, NativeAdState>(
          listener: (context, state) {
            state.map(
              initial: (e) {
                cprint('NAT listen', e.toString());
              },
              loading: (e) {
                cprint('NAT listen', e.toString());
              },
              loaded: (e) {
                cprint('NAT listen', e.toString());
              },
              failure: (e) {
                cprint('NAT listen', e.toString());
              },
            );
          },
        )
      ],
      child: SafeArea(
        child: Column(
          children: [
            const DashboardTopPart(),
            Expanded(
              child: ListView(
                children: [
                  const MetricsSummaryView(),
                  const Divider(),
                  const CountryMetricsView(),
                  const Divider(),
                  BlocBuilder<NativeAdBloc, NativeAdState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loaded: (s) => NativeAdWidget(
                          nativeAd: s.nativeAd,
                          size: NativeAdSize.large,
                        ),
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                  const AdUnitMetricsView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
