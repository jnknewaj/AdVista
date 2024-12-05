import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'apps.freezed.dart';

@freezed
class Apps with _$Apps {
  const factory Apps({
    required String name,
    required String appId,
    required String platform,
    required String displayName,
    LinkedAppInfo? linkedAppInfo,
    required String appApprovalState,
    String? appIconUrl,
  }) = _Apps;
}

@freezed
class LinkedAppInfo with _$LinkedAppInfo {
  const LinkedAppInfo._();

  const factory LinkedAppInfo({
    required String appStoreId,
    required String displayName,
  }) = _LinkedAppInfo;
}
