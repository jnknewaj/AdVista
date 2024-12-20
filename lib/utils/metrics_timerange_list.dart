import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';

enum TimeRange {
  today,
  yesterday,
  last7Days,
  thisMonth,
  lastMonth,
  thisYear,
  lastYear, // newly Added
  allTime,
  custom
}

enum MetricsTitle {
  earnings,
  impression,
  requests,
  clicks,
  eCPM,
  matchRate,
}

String timeRangeToString(
  TimeRange range, {
  /// Just For 'Custom'
  DateTimeRange? dateTimeRange,
}) {
  DateService _dateService = DateService();
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
