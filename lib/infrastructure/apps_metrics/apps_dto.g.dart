// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppsDtoImpl _$$AppsDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppsDtoImpl(
      name: json['name'] as String,
      appId: json['appId'] as String,
      platform: json['platform'] as String,
      displayName: json['displayName'] as String,
      linkedAppInfo: json['linkedAppInfo'] == null
          ? null
          : LinkedAppInfoDto.fromJson(
              json['linkedAppInfo'] as Map<String, dynamic>),
      appApprovalState: json['appApprovalState'] as String,
      appIconUrl: json['appIconUrl'] as String?,
    );

Map<String, dynamic> _$$AppsDtoImplToJson(_$AppsDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'appId': instance.appId,
      'platform': instance.platform,
      'displayName': instance.displayName,
      'linkedAppInfo': instance.linkedAppInfo,
      'appApprovalState': instance.appApprovalState,
      'appIconUrl': instance.appIconUrl,
    };

_$LinkedAppInfoDtoImpl _$$LinkedAppInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LinkedAppInfoDtoImpl(
      appStoreId: json['appStoreId'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$LinkedAppInfoDtoImplToJson(
        _$LinkedAppInfoDtoImpl instance) =>
    <String, dynamic>{
      'appStoreId': instance.appStoreId,
      'displayName': instance.displayName,
    };
