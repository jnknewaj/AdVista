import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TimeRange {
  today,
  yesterday,
  last7Days,
  thisMonth,
  lastMonth,
  thisYear,
  lifetime,
  custom,
}

class TimeRangeNotifier extends Notifier<TimeRange> {
  @override
  TimeRange build() {
    return TimeRange.today;
  }

  void setTimeRange(TimeRange newTimeRange) {
    state = newTimeRange;
  }
}

final timeRangeProvider =
    NotifierProvider<TimeRangeNotifier, TimeRange>(TimeRangeNotifier.new);
