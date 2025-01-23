import 'package:advista/application/advertising/interstitial/interstitial_bloc/interstial_bloc.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_state.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/presentation/charts/metrics/pages/metrics_chart_page.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/presentation/metrics/summary/widgets/grid_item_loading_widget.dart';
import 'package:advista/presentation/metrics/summary/widgets/metrics_item.dart';
import 'package:advista/presentation/metrics/summary/widgets/summary_loading.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MetricsSummaryView extends ConsumerWidget {
  const MetricsSummaryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateRange = ref.watch(timeRangeProvider);
    return BlocBuilder<TodaysMetricsBloc, TodaysMetricsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Metrics",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'See Chart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onTap: () {
                      context
                          .read<InterstialBloc>()
                          .add(const InterstialEvent.showAd());
                      navigateTo(context, const MetricsChartPage());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
              BlocBuilder<TodaysMetricsBloc, TodaysMetricsState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return SummaryLoading(
                        height: screenHeightPortion(context, 0.25));
                  }
                  final error = _mapToError(dateRange.range, state);
                  if (error == null) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1.7,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        final metrics =
                            _mapTimeRangeToMetrics(dateRange.range, state);

                        return MetricsItem(
                          topText: _mapIndexToTopText(
                              index, metrics!), // TODO check error on ! here
                          bottomText: _mapIndexToBottomText(index),
                        );
                      },
                    );
                  } else {
                    return BillBoard(text: error);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

String _mapIndexToBottomText(int index) {
  switch (index) {
    case 0:
      return 'Earnings';
    case 1:
      return 'Impression';
    case 2:
      return 'Requests';
    case 3:
      return 'Clicks';
    case 4:
      return 'eCPM';
    case 5:
      return 'Match Rate';
    default:
      return 'Unexpected Index';
  }
}

String _mapIndexToTopText(int index, Metrics metrics) {
  switch (index) {
    case 0:
      return metrics.earnings.toStringAsFixed(3);
    case 1:
      return metrics.impression.toString();
    case 2:
      return metrics.requests.toString();
    case 3:
      return metrics.clicks.toString();
    case 4:
      return metrics.eCPM.toStringAsFixed(2);
    case 5:
      return metrics.matchRate.toStringAsFixed(2);
    default:
      return 'Unexpected Index';
  }
}

Metrics? _mapTimeRangeToMetrics(TimeRange timeRange, TodaysMetricsState state) {
  switch (timeRange) {
    case TimeRange.today:
      return state.todayMetrics;
    case TimeRange.yesterday:
      return state.yesterdayMetrics;
    case TimeRange.last7Days:
      return state.sevenDaysMetrics;
    case TimeRange.thisMonth:
      return state.thisMonthMetrics;
    case TimeRange.lastMonth:
      return state.lastMonthMetrics;
    case TimeRange.thisYear:
      return state.thisYearsMetrics;
    case TimeRange.allTime:
      return state.lifeTimeMetrics;
    case TimeRange.custom:
      return state.customMetrics;
    default:
      return null;
  }
}

String? _mapToError(
  TimeRange timeRange,
  TodaysMetricsState state,
) {
  switch (timeRange) {
    case TimeRange.today:
      if (state.todayError != null) {
        return state.todayError!;
      }
      return null;
    case TimeRange.yesterday:
      if (state.yesterdayError != null) {
        return state.yesterdayError!;
      }
      return null;
    case TimeRange.last7Days:
      if (state.last7DaysError != null) {
        return state.last7DaysError!;
      }
      return null;
    case TimeRange.thisMonth:
      if (state.thisMonthError != null) {
        return state.thisMonthError!;
      }
      return null;
    case TimeRange.lastMonth:
      if (state.lastMonthError != null) {
        return state.lastMonthError!;
      }
      return null;
    case TimeRange.thisYear:
      if (state.thisYearError != null) {
        return state.thisMonthError!;
      }
      return null;
    case TimeRange.allTime:
      if (state.lifeTimeError != null) {
        return state.lifeTimeError!;
      }
      return null;
    case TimeRange.custom:
      if (state.customError != null) {
        return state.customError!;
      }
      return null;
    default:
      return 'ERRRRROR';
  }
}
