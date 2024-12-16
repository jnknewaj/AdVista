import 'package:advista/application/metrics/country_wise_metrics/country_wise_metrics_bloc.dart';
import 'package:advista/application/metrics/metrics_with_date/metrics_with_date_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/charts/country/widgets/country_pie_chart.dart';
import 'package:advista/presentation/charts/country/widgets/shimmer_pie_chart.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_page_top_part.dart';
import 'package:advista/presentation/charts/metrics/widgets/chart_seven_days.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/country_name_util.dart';
import 'package:fl_chart/fl_chart.dart';
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
                  key: const ValueKey('Last7Days'),
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requsted7days()),
                  child: MyPieChart(selectedMetrics, 'Last 7-Days Data'),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  key: const ValueKey('Last8Days'),
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedThisMonth()),
                  child: MyPieChart(selectedMetrics, 'This Months Data'),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  key: const ValueKey('Last9Days'),
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedThisYear()),
                  child: MyPieChart(selectedMetrics, 'This Years Data'),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  key: const ValueKey('Last10Days'),
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedLastYear()),
                  child: MyPieChart(selectedMetrics, 'Last Years Data'),
                ),
                const SizedBox(height: 10),
                BlocProvider(
                  key: const ValueKey('Last11Days'),
                  create: (context) => getIt<CountryWiseMetricsBloc>()
                    ..add(const CountryWiseMetricsEvent.requstedLifeTime()),
                  child: MyPieChart(selectedMetrics, 'All Time Data'),
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

class MyPieChart extends StatefulWidget {
  final ValueNotifier<MetricsTitle> selectedMetrics;
  final String title;
  const MyPieChart(
    this.selectedMetrics,
    this.title,
  );

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<CountryWiseMetricsBloc, CountryWiseMetricsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const ShimmerPieChart(),
          loading: (_) => const ShimmerPieChart(),
          loaded: (s) {
            final metricsList = s.metrics;
            return CountryPieChart(
              title: widget.title,
              metricsList: metricsList,
              selectedMetrics: widget.selectedMetrics,
            );
          },
          failed: (_) => const BillBoard(text: 'Error Loading Chart'),
          noDataFound: (_) => const BillBoard(text: 'No Data Found'),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
