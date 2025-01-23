import 'package:advista/application/advertising/interstitial/interstitial_bloc/interstial_bloc.dart';
import 'package:advista/application/metrics/apps_metrics/apps_metrics_bloc/apps_metrics_bloc.dart';
import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/application/metrics/providers/time_range_provider.dart';
import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/presentation/metrics/apps_data/widgets/apps_data_widget.dart';
import 'package:advista/presentation/metrics/country/widgets/country_data_shimmer.dart';
import 'package:advista/presentation/metrics/widgets/metrics_horizontal_list.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Used in [MetricsPage] to show summary data of 'App' dimension
class AppsMetricsView extends ConsumerWidget {
  const AppsMetricsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsTitle = ref.watch(metricsTitleNotifierProvider3);
    final dateRange = ref.watch(timeRangeProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Horizontal list view
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Apps Data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              // GestureDetector(
              //   child: Text(
              //     'See Chart',
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16,
              //       color: Theme.of(context).primaryColor,
              //     ),
              //   ),
              //   onTap: () {
              //     context
              //         .read<InterstialBloc>()
              //         .add(const InterstialEvent.showAd());
              //     //navigateTo(context, const AdUnitChartPage());
              //   },
              // ),
            ],
          ),
          const SizedBox(height: 8),
          MetricsHorizontalList(
            metricsTitle: metricsTitle,
            onEarningsTap: () {
              ref
                  .read(metricsTitleNotifierProvider3.notifier)
                  .setMetricsTitle(MetricsTitle.earnings);
            },
            onImpressionTap: () {
              ref
                  .read(metricsTitleNotifierProvider3.notifier)
                  .setMetricsTitle(MetricsTitle.impression);
            },
            onReqTap: () {
              ref
                  .read(metricsTitleNotifierProvider3.notifier)
                  .setMetricsTitle(MetricsTitle.requests);
            },
            onClicksTap: () {
              ref
                  .read(metricsTitleNotifierProvider3.notifier)
                  .setMetricsTitle(MetricsTitle.clicks);
            },
            oneCPMTap: () {
              ref
                  .read(metricsTitleNotifierProvider3.notifier)
                  .setMetricsTitle(MetricsTitle.eCPM);
            },
            oneMatchRateTap: () {
              ref
                  .read(metricsTitleNotifierProvider3.notifier)
                  .setMetricsTitle(MetricsTitle.matchRate);
            },
          ),
          const SizedBox(height: 8),
          BlocBuilder<AppsMetricsBloc, AppsMetricsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const ShimmerCountryData();
              }
              final error = _mapAppsMetricsToError(dateRange.range, state);
              if (error == null) {
                final dataList =
                    _mapTimeRangeToAppsMetrics(dateRange.range, state);

                if (dataList == null || dataList.isEmpty) {
                  return const BillBoard(
                      text: "No Data Found for The Selected Time Range");
                }
                return AppsDataWidget(
                  appsDataList: dataList,
                  metricsTitle: metricsTitle,
                  timeRange: dateRange.range,
                );
              } else {
                return BillBoard(text: error);
              }
            },
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

List<AppsMetrics>? _mapTimeRangeToAppsMetrics(
  TimeRange timeRange,
  AppsMetricsState state,
) {
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

String? _mapAppsMetricsToError(
  TimeRange timeRange,
  AppsMetricsState state,
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
        return state.thisMonthError;
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
