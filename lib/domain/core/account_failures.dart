import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_failures.freezed.dart';

@freezed
class AccountFailures with _$AccountFailures {
  const factory AccountFailures.networkFailure(String msg) = NetworkFailure;
  const factory AccountFailures.timeOut(String msg) = TimeOut;
  const factory AccountFailures.parsingFailure(String msg) = ParsingFailure;
  const factory AccountFailures.tokenNotFound(String msg) = TokenNotFound;
  const factory AccountFailures.serverFailure({
    required String msg,
    required String code,
  }) = ServerFailure;
  // Not Verified Yet
  const factory AccountFailures.httpFailure(int code, String message) =
      HTTPFailure;
  const factory AccountFailures.unknown(String message) = Unknown;
}
