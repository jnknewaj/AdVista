// ignore_for_file: avoid_print
import 'dart:math';

import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/apps_metrics/apps_data_failures.dart';
import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/domain/core/account_failures.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:advista/utils/metrics_timerange_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

navigateTo(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

navigateAndRemoveUntil(BuildContext context, Widget page) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
    (_) => false,
  );
}

pop(BuildContext context) {
  Navigator.of(context).pop();
}

showSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: Colors.cyan,
    ));
}

/// Formats a `DateTime` into the required string format
String formatDate(DateTime date) {
  return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}

String formatToStd(DateTime dateTime) {
  // Define month names
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  // Extract day, month, and year
  final day = dateTime.day;
  final month = months[dateTime.month - 1]; // Month is 1-based
  final year = dateTime.year;

  // Return formatted string
  return '$day $month, $year';
}

cprint(String tag, String? msg) => print('$tag : $msg');

double screenHeightPortion(BuildContext context, double portion) {
  return MediaQuery.of(context).size.height * portion;
}

double screenWidthPortion(BuildContext context, double portion) {
  return MediaQuery.of(context).size.width * portion;
}

String getFlagEmoji(String countryCode) {
  const int flagOffset = 0x1F1E6; // Unicode offset for 'A'
  const int asciiOffset = 0x41; // ASCII offset for 'A'

  int firstChar = countryCode.codeUnitAt(0) - asciiOffset + flagOffset;
  int secondChar = countryCode.codeUnitAt(1) - asciiOffset + flagOffset;

  return String.fromCharCode(firstChar) + String.fromCharCode(secondChar);
}

String mapAppsDataFailuresToText(AppsDataFailures failures) {
  return failures.map(
    networkFailure: (e) => 'Check Network',
    serverFailure: (e) => 'Server Error : ${e.msg}',
    idNotFound: (e) => 'Admob Id Not Found',
    unknown: (e) => 'Unknown Error : ${e.msg}',
    htmlFailure: (e) => e.msg,
    timeoutFailure: (e) => e.msg,
    tokenNotFoundFailure: (e) => e.msg,
  );
}

String mapMetricsFailuresToText(MetricsFailures failures) {
  return failures.map(
    networkFailure: (e) => 'Check Network',
    timeout: (e) => 'Connection Timeout',
    parsingFailure: (e) => 'Parsing error : ${e.msg}',
    tokenNotFound: (e) => 'Token Not Found',
    serverFailure: (e) => 'Server Error : ${e.msg}',
    idNotFound: (e) => 'Account is not linked with AdMob',
    unknown: (e) => 'Unknown Error : ${e.msg}',
    invalidCountryCode: (e) => 'Invalid Country Code',
    noDataForCountry: (e) => 'No Country Data Found',
  );
}

String mapAccountFailuresToString(AccountFailures failure) {
  return failure.map(
    networkFailure: (e) => 'Check Network',
    parsingFailure: (e) => 'Parsing error : ${e.msg}',
    tokenNotFound: (e) => 'Token Not Found',
    serverFailure: (e) {
      if (e.code == 401.toString()) {
        return 'The account is not linked with AdMob';
      } else {
        return e.msg;
      }
    },
    idNotFound: (e) => 'Admob Id Not Found',
    unknown: (e) => 'Unknown Error : ${e.message}',
    httpFailure: (e) => e.message,
    timeOut: (e) => e.msg,
  );
}

List<CountryMetrics> sortCountryMetricsList(
  MetricsTitle title,
  List<CountryMetrics> list,
) {
  final sortedList = List<CountryMetrics>.from(list);
  switch (title) {
    case MetricsTitle.earnings:
      sortedList
          .sort((a, b) => b.metrics.earnings.compareTo(a.metrics.earnings));
      break;
    case MetricsTitle.impression:
      sortedList
          .sort((a, b) => b.metrics.impression.compareTo(a.metrics.impression));
      break;
    case MetricsTitle.requests:
      sortedList
          .sort((a, b) => b.metrics.requests.compareTo(a.metrics.requests));
      break;
    case MetricsTitle.clicks:
      sortedList.sort((a, b) => b.metrics.clicks.compareTo(a.metrics.clicks));
      break;
    case MetricsTitle.eCPM:
      sortedList.sort((a, b) => b.metrics.eCPM.compareTo(a.metrics.eCPM));
      break;
    case MetricsTitle.matchRate:
      sortedList
          .sort((a, b) => b.metrics.matchRate.compareTo(a.metrics.matchRate));
      break;
    default:
      throw Exception('Unsupported MetricsTitle: $title');
  }
  return sortedList;
}

List<AdUnitMetrics> sortAdUnitMetricsList(
  MetricsTitle title,
  List<AdUnitMetrics> list,
) {
  final sortedList = List<AdUnitMetrics>.from(list);
  switch (title) {
    case MetricsTitle.earnings:
      sortedList
          .sort((a, b) => b.metrics.earnings.compareTo(a.metrics.earnings));
      break;
    case MetricsTitle.impression:
      sortedList
          .sort((a, b) => b.metrics.impression.compareTo(a.metrics.impression));
      break;
    case MetricsTitle.requests:
      sortedList
          .sort((a, b) => b.metrics.requests.compareTo(a.metrics.requests));
      break;
    case MetricsTitle.clicks:
      sortedList.sort((a, b) => b.metrics.clicks.compareTo(a.metrics.clicks));
      break;
    case MetricsTitle.eCPM:
      sortedList.sort((a, b) => b.metrics.eCPM.compareTo(a.metrics.eCPM));
      break;
    case MetricsTitle.matchRate:
      sortedList
          .sort((a, b) => b.metrics.matchRate.compareTo(a.metrics.matchRate));
      break;
    default:
      throw Exception('Unsupported Metrics Title: $title');
  }
  return sortedList;
}

List<AppsMetrics> sortAppsMetricsList(
  MetricsTitle title,
  List<AppsMetrics> list,
) {
  final sortedList = List<AppsMetrics>.from(list);
  switch (title) {
    case MetricsTitle.earnings:
      sortedList
          .sort((a, b) => b.metrics.earnings.compareTo(a.metrics.earnings));
      break;
    case MetricsTitle.impression:
      sortedList
          .sort((a, b) => b.metrics.impression.compareTo(a.metrics.impression));
      break;
    case MetricsTitle.requests:
      sortedList
          .sort((a, b) => b.metrics.requests.compareTo(a.metrics.requests));
      break;
    case MetricsTitle.clicks:
      sortedList.sort((a, b) => b.metrics.clicks.compareTo(a.metrics.clicks));
      break;
    case MetricsTitle.eCPM:
      sortedList.sort((a, b) => b.metrics.eCPM.compareTo(a.metrics.eCPM));
      break;
    case MetricsTitle.matchRate:
      sortedList
          .sort((a, b) => b.metrics.matchRate.compareTo(a.metrics.matchRate));
      break;
    default:
      throw Exception('Unsupported Metrics Title: $title');
  }
  return sortedList;
}

String appName() => 'AdVista';

DateTime stringToDateTime(String dateString) {
  DateFormat dateFormat = DateFormat("d MMMM, yyyy");
  return dateFormat.parse(dateString);
}

T findMaxForMatricsWithDate<T extends num>(
    List<MetricsWithDate> metricsList, T Function(MetricsWithDate) selector) {
  return metricsList.map(selector).reduce((a, b) => a > b ? a : b);
}

T findMinForMatricsWithDate<T extends num>(
    List<MetricsWithDate> metricsList, T Function(MetricsWithDate) selector) {
  return metricsList.map(selector).reduce((a, b) => a < b ? a : b);
}

String formatDateString(String dateStr) {
  DateTime date;

  if (dateStr.length == 8) {
    // Format: YYYYMMDD (e.g., 20241209)
    date = DateTime.parse(dateStr);
    final formatter = DateFormat('d MMM');
    return formatter.format(date); // Outputs "d MMM", e.g., "9 Dec"
  } else if (dateStr.length == 6) {
    // Format: YYYYMM (e.g., 202301)
    final year = int.parse(dateStr.substring(0, 4));
    final month = int.parse(dateStr.substring(4, 6));
    date = DateTime(year, month);
    final formatter = DateFormat('MMM'); // Only the month name
    return formatter.format(date); // Outputs "MMM", e.g., "Jan"
  } else {
    return 'E'; // Handle invalid format
  }
}

String truncateString(String input, int maxLength) {
  if (input.length <= maxLength) {
    return input;
  }
  return '${input.substring(0, maxLength)}..';
}

final colorsForPieChart = [
  Colors.blue,
  const Color.fromARGB(255, 233, 30, 206),
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.cyan,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.lime,
];

String formatAdmobAppId(String adUnitId) {
  if (adUnitId.contains("~")) {
    final parts = adUnitId.split("~");
    return "${parts.first.substring(0, 10)}..${parts.last}";
  }
  return adUnitId;
}

Color getRandomColor() {
  final random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

String mapAppsMetricsToText(
  MetricsTitle title,
  AppsMetrics metrics,
) {
  switch (title) {
    case MetricsTitle.earnings:
      return '\$${metrics.metrics.earnings.toStringAsFixed(4)}';
    case MetricsTitle.impression:
      return metrics.metrics.impression.toString();
    case MetricsTitle.requests:
      return metrics.metrics.requests.toString();
    case MetricsTitle.clicks:
      return metrics.metrics.clicks.toString();
    case MetricsTitle.eCPM:
      return '\$${metrics.metrics.eCPM.toStringAsFixed(2)}';
    case MetricsTitle.matchRate:
      return '${metrics.metrics.matchRate.toStringAsFixed(2)}\%';
    default:
      return 'Unknown metrics';
  }
}
