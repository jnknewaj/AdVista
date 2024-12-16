import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class DateService {
  DateTime getLastDayOfPreviousMonth() {
    DateTime currentDate = DateTime.now();
    DateTime firstDayOfCurrentMonth =
        DateTime(currentDate.year, currentDate.month, 1);
    DateTime lastDayOfPreviousMonth =
        firstDayOfCurrentMonth.subtract(const Duration(days: 1));
    return lastDayOfPreviousMonth;
  }

  DateTime getYesterday() => DateTime.now().subtract(const Duration(days: 1));

  DateTimeRange getLast7DaysRange() {
    DateTime today = DateTime.now();
    DateTime endDay = today.subtract(const Duration(days: 1));
    DateTime startDay = endDay.subtract(const Duration(days: 6));
    return DateTimeRange(start: startDay, end: endDay);
  }

  DateTimeRange getCurrentMonth() {
    final today = DateTime.now();
    final startDay = DateTime(today.year, today.month, 1);
    return DateTimeRange(start: startDay, end: today);
  }

  DateTimeRange getLastMonth() {
    final today = DateTime.now();
    final firstDayOfLastMonth = DateTime(today.year, today.month - 1, 1);
    final lastDayOfLastMonth = DateTime(today.year, today.month,
        0); // 0th day of current month gives the last day of the previous month
    return DateTimeRange(start: firstDayOfLastMonth, end: lastDayOfLastMonth);
  }

  DateTimeRange getThisYear() {
    final today = DateTime.now();
    final firstDayOfThisYear =
        DateTime(today.year, 1, 1); // January 1st of the current year
    return DateTimeRange(start: firstDayOfThisYear, end: today);
  }

  DateTimeRange getLastYear() {
    final today = DateTime.now();
    final firstDayOfLastYear =
        DateTime(today.year - 1, 1, 1); // January 1st of the previous year
    final lastDayOfLastYear =
        DateTime(today.year - 1, 12, 31); // December 31st of the previous year
    return DateTimeRange(start: firstDayOfLastYear, end: lastDayOfLastYear);
  }

  DateTimeRange getLast12Months() {
    final today = DateTime.now();
    final firstDay12MonthsAgo = DateTime(today.year, today.month - 11, 1);
    final lastDay = DateTime(today.year, today.month, today.day);
    return DateTimeRange(start: firstDay12MonthsAgo, end: lastDay);
  }
}
