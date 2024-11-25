import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_failures.freezed.dart';

@freezed
class TokenFailures with _$TokenFailures {
  const factory TokenFailures.notFound() = NotFound;
  const factory TokenFailures.expired() = Expired;
  const factory TokenFailures.serverError({String? code, String? msg}) =
      ServerError;
  const factory TokenFailures.unknown({String? code, String? msg}) = Unknown;
}
