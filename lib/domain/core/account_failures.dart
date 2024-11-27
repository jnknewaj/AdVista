import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_failures.freezed.dart';

@freezed
class AccountFailures with _$AccountFailures {
  const factory AccountFailures.httpFailure(int code, String message) =
      HTTPFailure;
  const factory AccountFailures.unknown(String message) = Unknown;
}
