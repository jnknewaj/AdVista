import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';

Map<String, dynamic> buildRequestBody(
  DateTimeRange date,
  List<String> dimensions,
) {
  final startDate = date.start;
  final endDate = date.end;
  cprint('VAL start', formatToStd(startDate));
  cprint('VAL end', formatToStd(endDate));
  return {
    "reportSpec": {
      "dateRange": {
        "startDate": {
          "year": startDate.year,
          "month": startDate.month,
          "day": startDate.day
        },
        "endDate": {
          "year": endDate.year,
          "month": endDate.month,
          "day": endDate.day
        }
      },
      "dimensions": dimensions,
      "metrics": [
        "AD_REQUESTS",
        "CLICKS",
        "ESTIMATED_EARNINGS",
        "IMPRESSIONS",
        "IMPRESSION_CTR",
        "IMPRESSION_RPM",
        "MATCHED_REQUESTS",
        "MATCH_RATE",
        "SHOW_RATE"
      ],
      "localizationSettings": {"currencyCode": "USD", "languageCode": "en"}
    }
  };
}

Map<String, String> buildHeaders(String accessToken) {
  return {
    "Content-Type": "application/json",
    "Authorization": "Bearer $accessToken",
  };
}
