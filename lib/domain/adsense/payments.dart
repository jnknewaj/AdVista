import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payments.freezed.dart';

@freezed
class Payments with _$Payments {
  const factory Payments({
    required String name,
    required String? payment,
    required PaymentType type,
  }) = _Payments;
}

enum PaymentType {
  unpaid,
  youtubeUnpaid,
  adsensePaid,
  youtubePaid,
}
