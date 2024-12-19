import 'package:advista/application/metrics/ad_unit_metrics/ad_unit_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/charts/ad_unit/widgets/ad_unit_graph.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_page_top_part.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AdUnitChartPage extends StatelessWidget {
  const AdUnitChartPage();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TodaysMetricsBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text(appName()), centerTitle: true),
        body: const _Handler(),
      ),
    );
  }
}

class _Handler extends HookWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    final selectedMetrics = useState(MetricsTitle.earnings);
    return SafeArea(
      child: Column(
        children: [
          ChartPageTopPart(selectedMetrics),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                BlocProvider(
                  create: (context) => getIt<AdUnitMetricsBloc>()
                    ..add(const AdUnitMetricsEvent.requsted7days()),
                  child: AdUnitGraph(
                    selectedMetrics,
                    'Last 7-Days Data',
                    TimeRange.last7Days,
                  ),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<AdUnitMetricsBloc>()
                    ..add(const AdUnitMetricsEvent.requstedThisMonth()),
                  child: AdUnitGraph(
                    selectedMetrics,
                    'This Months Data',
                    TimeRange.thisMonth,
                  ),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<AdUnitMetricsBloc>()
                    ..add(const AdUnitMetricsEvent.requstedThisYear()),
                  child: AdUnitGraph(
                    selectedMetrics,
                    'This Years Data',
                    TimeRange.thisYear,
                  ),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<AdUnitMetricsBloc>()
                    ..add(const AdUnitMetricsEvent.requstedLifeTime()),
                  child: AdUnitGraph(
                    selectedMetrics,
                    'All Time Data',
                    TimeRange.lifetime,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
