// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

navigateTo(BuildContext context, Widget page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
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

cprint(String tag, String? msg) {
  print('$tag : $msg');
}
