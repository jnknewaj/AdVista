import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/charts/country/widgets/country_graph.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_page_top_part.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountryChartPage extends StatelessWidget {
  const CountryChartPage({super.key});

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
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requsted7days()),
                  child: CountryGraph(
                    selectedMetrics,
                    'Last 7-Days Data',
                    TimeRange.last7Days,
                  ),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedThisMonth()),
                  child: CountryGraph(
                    selectedMetrics,
                    'This Months Data',
                    TimeRange.thisMonth,
                  ),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedThisYear()),
                  child: CountryGraph(
                    selectedMetrics,
                    'This Years Data',
                    TimeRange.thisYear,
                  ),
                ),
                const SizedBox(height: 10),
                // BlocProvider(
                //   create: (context) => getIt<CountryWiseMetricsBloc>()
                //     ..add(const CountryWiseMetricsEvent.requstedLastYear()),
                //   child: CountryGraph(
                //     selectedMetrics,
                //     'Last Years Data',
                //     TimeRange.lastYear,
                //   ),
                // ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedLifeTime()),
                  child: CountryGraph(
                    selectedMetrics,
                    'All Time Data',
                    TimeRange.allTime,
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
