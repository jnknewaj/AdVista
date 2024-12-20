import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/injection.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:advista/utils/app_utils.dart';

class TimeRangeState {
  final TimeRange range;
  final String dateRange;

  TimeRangeState({required this.range, required this.dateRange});
}

class TimeRangeNotifier extends AutoDisposeNotifier<TimeRangeState> {
  final DateService _dateService;

  TimeRangeNotifier(this._dateService);

  @override
  TimeRangeState build() {
    return TimeRangeState(
      range: TimeRange.today,
      dateRange: formatToStd(DateTime.now()),
    );
  }

  void setTimeRange(
    TimeRange range, {
    /// Just For 'Custom'
    DateTimeRange? dateTimeRange,
  }) {
    state = TimeRangeState(
      range: range,
      dateRange: timeRangeToString(
        range,
        dateTimeRange: dateTimeRange,
      ),
    );
  }

  String timeRangeToString(
    TimeRange range, {
    /// Just For 'Custom'
    DateTimeRange? dateTimeRange,
  }) {
    switch (range) {
      case TimeRange.today:
        return formatToStd(DateTime.now());
      case TimeRange.yesterday:
        return formatToStd(_dateService.getYesterday());
      case TimeRange.last7Days:
        final last7Days = _dateService.getLast7DaysRange();
        return '${formatToStd(last7Days.start)} - ${formatToStd(last7Days.end)}';
      case TimeRange.thisMonth:
        final thisMonth = _dateService.getCurrentMonth();
        return '${formatToStd(thisMonth.start)} - ${formatToStd(thisMonth.end)}';
      case TimeRange.lastMonth:
        final lastMonth = _dateService.getLastMonth();
        return '${formatToStd(lastMonth.start)} - ${formatToStd(lastMonth.end)}';
      case TimeRange.thisYear:
        final thisYear = _dateService.getThisYear();
        return '${formatToStd(thisYear.start)} - ${formatToStd(thisYear.end)}';
      case TimeRange.lastYear:
        final lastYear = _dateService.getLastYear();
        return '${formatToStd(lastYear.start)} - ${formatToStd(lastYear.end)}';
      case TimeRange.allTime:
        return 'All Time';
      case TimeRange.custom:
        if (dateTimeRange != null) {
          return '${formatToStd(dateTimeRange.start)} - ${formatToStd(dateTimeRange.end)}';
        } else {
          return 'Custom Range';
        }
    }
  }
}

final timeRangeProvider =
    NotifierProvider.autoDispose<TimeRangeNotifier, TimeRangeState>(
  () => TimeRangeNotifier(
    getIt<DateService>(),
  ),
); // used in MetricsPage

final timeRangeProviderForCountryPage =
    NotifierProvider.autoDispose<TimeRangeNotifier, TimeRangeState>(
  () => TimeRangeNotifier(
    getIt<DateService>(),
  ),
);

final timeRangeProviderForAdUnitPage =
    NotifierProvider.autoDispose<TimeRangeNotifier, TimeRangeState>(
  () => TimeRangeNotifier(
    getIt<DateService>(),
  ),
);
