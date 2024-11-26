import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics_failures.freezed.dart';

@freezed
class MetricsFailures with _$MetricsFailures {
  const factory MetricsFailures.serviceError({String? msg}) = ServiceError;
  const factory MetricsFailures.unknown({String? msg, String? code}) = Unknown;
  const factory MetricsFailures.httpError({
    String? msg,
    int? code,
  }) = HttpError;
}
