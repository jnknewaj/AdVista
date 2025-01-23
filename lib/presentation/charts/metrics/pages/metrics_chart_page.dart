import 'package:advista/application/metrics/metrics_with_date/metrics_with_date_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_page_top_part.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_seven_days.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MetricsChartPage extends StatelessWidget {
  const MetricsChartPage({super.key});

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
                Align(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                    ),
                    child: const Text('Last 7 Days'),
                  ),
                ),
                const SizedBox(height: 60),
                BlocProvider(
                  create: (context) => getIt<MetricsWithDateBloc>()
                    ..add(const MetricsWithDateEvent.started()),
                  child: ChartSevenDays(selectedMetrics),
                ),
                Align(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                    ),
                    child: const Text('Last 12 Months'),
                  ),
                ),
                const SizedBox(height: 60),
                BlocProvider(
                  create: (context) => getIt<MetricsWithDateBloc>()
                    ..add(const MetricsWithDateEvent.twelveMonthsRequested()),
                  child: ChartSevenDays(selectedMetrics),
                ),
                Align(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                    ),
                    child: const Text('Last 5 Years'),
                  ),
                ),
                const SizedBox(height: 30),
                BlocProvider(
                  create: (context) => getIt<MetricsWithDateBloc>()
                    ..add(const MetricsWithDateEvent.last5YearsRequested()),
                  child: ChartSevenDays(
                    selectedMetrics,
                    chartType: ChartType.lineChart,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
