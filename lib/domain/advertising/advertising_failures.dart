import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertising_failures.freezed.dart';

@freezed
class AdvertisingFailures with _$AdvertisingFailures {
  const factory AdvertisingFailures.unknown(String message) = Unknown;
}
