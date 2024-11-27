import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'admob_account.freezed.dart';

@freezed
class AdmobAccount with _$AdmobAccount {
  const factory AdmobAccount({
    required String name,
    required String publisherId,
    required String reportingTimeZone,
    required String currencyCode,
  }) = _AdmobAccount;
}
