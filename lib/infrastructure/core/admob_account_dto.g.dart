// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admob_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdmobAccountDtoImpl _$$AdmobAccountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AdmobAccountDtoImpl(
      name: json['name'] as String,
      publisherId: json['publisherId'] as String,
      reportingTimeZone: json['reportingTimeZone'] as String,
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$AdmobAccountDtoImplToJson(
        _$AdmobAccountDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'publisherId': instance.publisherId,
      'reportingTimeZone': instance.reportingTimeZone,
      'currencyCode': instance.currencyCode,
    };
