import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_failures.freezed.dart';

@freezed
class PaymentsFailures with _$PaymentsFailures {
  const factory PaymentsFailures.tokenNotFound(String msg) = _TokenNotFound;
  const factory PaymentsFailures.idNotFound(String msg) = _IdNotFound;
  const factory PaymentsFailures.networkFailure(String msg) = _NetworkFailure;
  const factory PaymentsFailures.serverFailure(String code, String msg) =
      _ServerFailure;
  const factory PaymentsFailures.timeout(String msg) = _Timeout;
  const factory PaymentsFailures.parsingFailure(String msg) = _ParsingFailure;
  const factory PaymentsFailures.unknown(String msg) = _Unknwon;
}
