import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apps_dto.freezed.dart';
part 'apps_dto.g.dart';

@freezed
class AppsDto with _$AppsDto {
  const AppsDto._();
  const factory AppsDto({
    required String name,
    required String appId,
    required String platform,
    required String displayName,
    LinkedAppInfoDto? linkedAppInfo,
    required String appApprovalState,
    String? appIconUrl,
  }) = _AppsDto;

  Apps toDomain() {
    return Apps(
      name: name,
      appId: appId,
      platform: platform,
      displayName: displayName,
      linkedAppInfo: linkedAppInfo?.toDomain(),
      appApprovalState: appApprovalState,
      appIconUrl: appIconUrl,
    );
  }

  static AppsDto fromDomain(Apps app) {
    return AppsDto(
      name: app.name,
      appId: app.appId,
      platform: app.platform,
      displayName: app.displayName,
      linkedAppInfo: app.linkedAppInfo != null
          ? LinkedAppInfoDto.fromDomain(app.linkedAppInfo!)
          : null,
      appApprovalState: app.appApprovalState,
      appIconUrl: app.appIconUrl,
    );
  }

  factory AppsDto.fromJson(Map<String, dynamic> json) =>
      _$AppsDtoFromJson(json);

  factory AppsDto.fromApiResponse(Map<String, dynamic> json) {
    return AppsDto(
      name: json['name'] as String,
      appId: json['appId'] as String,
      platform: json['platform'] as String,
      displayName: json['manualAppInfo']['displayName'] as String,
      appApprovalState: json['appApprovalState'] as String,
      linkedAppInfo: json['linkedAppInfo'] != null
          ? LinkedAppInfoDto.fromJson(
              json['linkedAppInfo'] as Map<String, dynamic>)
          : null,
      appIconUrl: null, // url to be added later from service
    );
  }
}

@freezed
class LinkedAppInfoDto with _$LinkedAppInfoDto {
  const LinkedAppInfoDto._();

  const factory LinkedAppInfoDto({
    required String appStoreId,
    required String displayName,
  }) = _LinkedAppInfoDto;

  factory LinkedAppInfoDto.fromJson(Map<String, dynamic> json) =>
      _$LinkedAppInfoDtoFromJson(json);

  LinkedAppInfo toDomain() {
    return LinkedAppInfo(
      appStoreId: appStoreId,
      displayName: displayName,
    );
  }

  static LinkedAppInfoDto fromDomain(LinkedAppInfo linkedAppInfo) {
    return LinkedAppInfoDto(
      appStoreId: linkedAppInfo.appStoreId,
      displayName: linkedAppInfo.displayName,
    );
  }

  factory LinkedAppInfoDto.fromApiResponse(Map<String, dynamic> json) {
    return LinkedAppInfoDto(
      appStoreId: json['appStoreId'] as String,
      displayName: json['displayName'] as String,
    );
  }
}
