import 'package:advista/application/metrics/metrics_with_date/metrics_with_date_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_seven_days.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/utils/app_utils.dart';
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
          _TopPart(selectedMetrics),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const Text('Last 7 Days'),
                const SizedBox(height: 20),
                BlocProvider(
                  create: (context) => getIt<MetricsWithDateBloc>()
                    ..add(const MetricsWithDateEvent.started()),
                  child: ChartSevenDays(selectedMetrics),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  create: (context) => getIt<MetricsWithDateBloc>()
                    ..add(const MetricsWithDateEvent.twelveMonthsRequested()),
                  child: ChartSevenDays(selectedMetrics),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TopPart extends HookWidget {
  const _TopPart(this.selectedMetrics);
  final ValueNotifier<MetricsTitle> selectedMetrics;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          screenHeightPortion(context, 0.07), // this set height of the clips
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      width: double.infinity,
      child: MetricsHorizontalList(
        metricsTitle: selectedMetrics.value,
        onEarningsTap: () {
          selectedMetrics.value = MetricsTitle.earnings;
        },
        onImpressionTap: () {
          selectedMetrics.value = MetricsTitle.impression;
        },
        onReqTap: () {
          selectedMetrics.value = MetricsTitle.requests;
        },
        onClicksTap: () {
          selectedMetrics.value = MetricsTitle.clicks;
        },
        oneCPMTap: () {
          selectedMetrics.value = MetricsTitle.eCPM;
        },
        oneMatchRateTap: () {
          selectedMetrics.value = MetricsTitle.matchRate;
        },
      ),
    );
  }
}
