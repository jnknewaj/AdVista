// ignore_for_file: avoid_print

import 'package:advista/application/metrics/providers/country_metrics_provider.dart';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

navigateTo(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

persistentNavigateTo(BuildContext context, Widget page) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: page,
    withNavBar: false,
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
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

String getFlagEmoji(String countryCode) {
  const int flagOffset = 0x1F1E6; // Unicode offset for 'A'
  const int asciiOffset = 0x41; // ASCII offset for 'A'

  int firstChar = countryCode.codeUnitAt(0) - asciiOffset + flagOffset;
  int secondChar = countryCode.codeUnitAt(1) - asciiOffset + flagOffset;

  return String.fromCharCode(firstChar) + String.fromCharCode(secondChar);
}

String mapMetricsFailuresToText(MetricsFailures failures) {
  return failures.map(
    networkFailure: (e) => 'Check Network',
    timeout: (e) => 'Connection Timeout',
    parsingFailure: (e) => 'Parsing error : ${e.msg}',
    tokenNotFound: (e) => 'Token Not Found',
    serverFailure: (e) => 'Server Error : ${e.msg}',
    idNotFound: (e) => 'Admob Id Not Found',
    unknown: (e) => 'Unknown Error : ${e.msg}',
    invalidCountryCode: (e) => 'Invalid Country Code',
    noDataForCountry: (e) => 'No Country Data Found',
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
