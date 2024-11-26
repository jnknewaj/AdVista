import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_failures.freezed.dart';

@freezed
class AccountFailures with _$AccountFailures {
  const factory AccountFailures({
    required String name,
    required String publisherId,
    required String reportingTimeZone,
    required String currencyCode,
  }) = _AccountFailures;
}
