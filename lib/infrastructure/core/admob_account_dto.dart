import 'package:advista/domain/core/admob_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'admob_account_dto.freezed.dart';
part 'admob_account_dto.g.dart';

@freezed
class AdmobAccountDto with _$AdmobAccountDto {
  const AdmobAccountDto._();

  const factory AdmobAccountDto({
    required String name,
    required String publisherId,
    required String reportingTimeZone,
    required String currencyCode,
  }) = _AdmobAccountDto;

  factory AdmobAccountDto.fromDomain(AdmobAccount account) {
    return AdmobAccountDto(
      name: account.name,
      publisherId: account.publisherId,
      reportingTimeZone: account.reportingTimeZone,
      currencyCode: account.currencyCode,
    );
  }

  AdmobAccount toDomain() {
    return AdmobAccount(
      name: name,
      publisherId: publisherId,
      reportingTimeZone: reportingTimeZone,
      currencyCode: currencyCode,
    );
  }

  factory AdmobAccountDto.fromJson(Map<String, dynamic> json) =>
      _$AdmobAccountDtoFromJson(json);
}
