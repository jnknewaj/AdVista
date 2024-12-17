import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
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
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return SafeArea(
      child: Column(
        children: [
          const DashboardTopPart(),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final dateRange = ref.watch(timeRangeProvider);
                return RefreshIndicator(
                  onRefresh: () async {
                    _onRefresh(context, dateRange.range);
                  },
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
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> _onRefresh(
    BuildContext context,
    TimeRange dateRange,
  ) async {
    // Determine the correct events to dispatch based on the selected `dateRange`
    final todaysBloc = context.read<TodaysMetricsBloc>();
    final countryBloc = context.read<CountryWiseMetricsBloc>();
    final adUnitBloc = context.read<AdUnitMetricsBloc>();

    switch (dateRange) {
      case TimeRange.today:
        todaysBloc.add(const TodaysMetricsEvent.requsted());
        countryBloc.add(const CountryWiseMetricsEvent.requsted());
        adUnitBloc.add(const AdUnitMetricsEvent.requsted());
        break;
      case TimeRange.yesterday:
        todaysBloc.add(const TodaysMetricsEvent.requstedYesterday());
        countryBloc.add(const CountryWiseMetricsEvent.requstedYesterday());
        adUnitBloc.add(const AdUnitMetricsEvent.requstedYesterday());
        break;
      case TimeRange.last7Days:
        todaysBloc.add(const TodaysMetricsEvent.requsted7days());
        countryBloc.add(const CountryWiseMetricsEvent.requsted7days());
        adUnitBloc.add(const AdUnitMetricsEvent.requsted7days());
        break;
      case TimeRange.thisMonth:
        todaysBloc.add(const TodaysMetricsEvent.requstedThisMonth());
        countryBloc.add(const CountryWiseMetricsEvent.requstedThisMonth());
        adUnitBloc.add(const AdUnitMetricsEvent.requstedThisMonth());
        break;
      case TimeRange.lastMonth:
        todaysBloc.add(const TodaysMetricsEvent.requstedLastMonth());
        countryBloc.add(const CountryWiseMetricsEvent.requstedLastMonth());
        adUnitBloc.add(const AdUnitMetricsEvent.requstedLastMonth());
        break;
      case TimeRange.thisYear:
        todaysBloc.add(const TodaysMetricsEvent.requstedThisYear());
        countryBloc.add(const CountryWiseMetricsEvent.requstedThisYear());
        adUnitBloc.add(const AdUnitMetricsEvent.requstedThisYear());
        break;
      case TimeRange.lifetime:
        todaysBloc.add(const TodaysMetricsEvent.requstedLifeTime());
        countryBloc.add(const CountryWiseMetricsEvent.requstedLifeTime());
        adUnitBloc.add(const AdUnitMetricsEvent.requstedLifeTime());
        break;
      case TimeRange.custom:
        // final customRange = dateRange.dateTimeRange!;
        // todaysBloc.add(TodaysMetricsEvent.requstedCustom(
        //   customRange.start,
        //   customRange.end,
        // ));
        // countryBloc.add(CountryWiseMetricsEvent.requstedCustom(
        //   customRange.start,
        //   customRange.end,
        // ));
        // adUnitBloc.add(AdUnitMetricsEvent.requstedCustom(
        //   customRange.start,
        //   customRange.end,
        // ));
        break;
    }
  }
}
