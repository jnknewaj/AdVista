import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/injection.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeRangeState {
  final TimeRange range;
  final String dateRange;

  TimeRangeState({
    required this.range,
    required this.dateRange,
  });
}

class TimeRangeNotifier extends StateNotifier<TimeRangeState> {
  final DateService _dateService;

  TimeRangeNotifier(this._dateService)
      : super(
          TimeRangeState(
            range: TimeRange.today,
            dateRange: formatToStd(DateTime.now()),
          ),
        );

  void setTimeRange(TimeRange range) {
    state = TimeRangeState(
      range: range,
      dateRange: timeRangeToString(range),
    );
  }

  String timeRangeToString(TimeRange range) {
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
        final year = _dateService.getLastYear();
        return '${formatToStd(year.start)} - ${formatToStd(year.end)}';
      case TimeRange.allTime:
        return 'All Time';
      case TimeRange.custom:
        return 'Custom Range';
    }
  }
}

final newDateRangeProvider = StateNotifierProvider.autoDispose
    .family<TimeRangeNotifier, TimeRangeState, String>(
  (ref, id) => TimeRangeNotifier(getIt<DateService>()),
);
