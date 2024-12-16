import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics_with_date.freezed.dart';

@freezed
class MetricsWithDate with _$MetricsWithDate {
  const MetricsWithDate._();

  const factory MetricsWithDate({
    required String date,
    required int requests,
    required int matchedRequests,
    required int clicks,
    required double earnings,
    required int impressions,
    required double cTR,
    required double eCPM,
    required double matchRate,
    required double showRate,
  }) = _MetricsWithDate;
}
