import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics_failures.freezed.dart';

@freezed
class MetricsFailures with _$MetricsFailures {
  const factory MetricsFailures.networkFailure(String msg) = _NetworkFailure;
  const factory MetricsFailures.timeout(String msg) = _TimeOut;
  const factory MetricsFailures.parsingFailure(String msg) = _ParsingFailure;
  const factory MetricsFailures.tokenNotFound(String msg) = _TokenNotFound;
  const factory MetricsFailures.serverFailure(String msg) = _ServerFailure;
  const factory MetricsFailures.idNotFound(String msg) = _IdNotFound;
  const factory MetricsFailures.unknown(String msg) = _Unknown;
}
