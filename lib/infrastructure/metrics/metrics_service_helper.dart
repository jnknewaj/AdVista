import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';

Map<String, dynamic> buildRequestBody(DateTimeRange date) {
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
      "dimensions": [],
      "metrics": ["CLICKS", "AD_REQUESTS", "IMPRESSIONS", "ESTIMATED_EARNINGS"],
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
