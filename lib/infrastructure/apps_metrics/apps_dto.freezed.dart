// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppsDto _$AppsDtoFromJson(Map<String, dynamic> json) {
  return _AppsDto.fromJson(json);
}

/// @nodoc
mixin _$AppsDto {
  String get name => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  LinkedAppInfoDto? get linkedAppInfo => throw _privateConstructorUsedError;
  String get appApprovalState => throw _privateConstructorUsedError;
  String? get appIconUrl => throw _privateConstructorUsedError;

  /// Serializes this AppsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppsDtoCopyWith<AppsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsDtoCopyWith<$Res> {
  factory $AppsDtoCopyWith(AppsDto value, $Res Function(AppsDto) then) =
      _$AppsDtoCopyWithImpl<$Res, AppsDto>;
  @useResult
  $Res call(
      {String name,
      String appId,
      String platform,
      String displayName,
      LinkedAppInfoDto? linkedAppInfo,
      String appApprovalState,
      String? appIconUrl});

  $LinkedAppInfoDtoCopyWith<$Res>? get linkedAppInfo;
}

/// @nodoc
class _$AppsDtoCopyWithImpl<$Res, $Val extends AppsDto>
    implements $AppsDtoCopyWith<$Res> {
  _$AppsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? appId = null,
    Object? platform = null,
    Object? displayName = null,
    Object? linkedAppInfo = freezed,
    Object? appApprovalState = null,
    Object? appIconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      linkedAppInfo: freezed == linkedAppInfo
          ? _value.linkedAppInfo
          : linkedAppInfo // ignore: cast_nullable_to_non_nullable
              as LinkedAppInfoDto?,
      appApprovalState: null == appApprovalState
          ? _value.appApprovalState
          : appApprovalState // ignore: cast_nullable_to_non_nullable
              as String,
      appIconUrl: freezed == appIconUrl
          ? _value.appIconUrl
          : appIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AppsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkedAppInfoDtoCopyWith<$Res>? get linkedAppInfo {
    if (_value.linkedAppInfo == null) {
      return null;
    }

    return $LinkedAppInfoDtoCopyWith<$Res>(_value.linkedAppInfo!, (value) {
      return _then(_value.copyWith(linkedAppInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppsDtoImplCopyWith<$Res> implements $AppsDtoCopyWith<$Res> {
  factory _$$AppsDtoImplCopyWith(
          _$AppsDtoImpl value, $Res Function(_$AppsDtoImpl) then) =
      __$$AppsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String appId,
      String platform,
      String displayName,
      LinkedAppInfoDto? linkedAppInfo,
      String appApprovalState,
      String? appIconUrl});

  @override
  $LinkedAppInfoDtoCopyWith<$Res>? get linkedAppInfo;
}

/// @nodoc
class __$$AppsDtoImplCopyWithImpl<$Res>
    extends _$AppsDtoCopyWithImpl<$Res, _$AppsDtoImpl>
    implements _$$AppsDtoImplCopyWith<$Res> {
  __$$AppsDtoImplCopyWithImpl(
      _$AppsDtoImpl _value, $Res Function(_$AppsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? appId = null,
    Object? platform = null,
    Object? displayName = null,
    Object? linkedAppInfo = freezed,
    Object? appApprovalState = null,
    Object? appIconUrl = freezed,
  }) {
    return _then(_$AppsDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      linkedAppInfo: freezed == linkedAppInfo
          ? _value.linkedAppInfo
          : linkedAppInfo // ignore: cast_nullable_to_non_nullable
              as LinkedAppInfoDto?,
      appApprovalState: null == appApprovalState
          ? _value.appApprovalState
          : appApprovalState // ignore: cast_nullable_to_non_nullable
              as String,
      appIconUrl: freezed == appIconUrl
          ? _value.appIconUrl
          : appIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppsDtoImpl extends _AppsDto {
  const _$AppsDtoImpl(
      {required this.name,
      required this.appId,
      required this.platform,
      required this.displayName,
      this.linkedAppInfo,
      required this.appApprovalState,
      this.appIconUrl})
      : super._();

  factory _$AppsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppsDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String appId;
  @override
  final String platform;
  @override
  final String displayName;
  @override
  final LinkedAppInfoDto? linkedAppInfo;
  @override
  final String appApprovalState;
  @override
  final String? appIconUrl;

  @override
  String toString() {
    return 'AppsDto(name: $name, appId: $appId, platform: $platform, displayName: $displayName, linkedAppInfo: $linkedAppInfo, appApprovalState: $appApprovalState, appIconUrl: $appIconUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.linkedAppInfo, linkedAppInfo) ||
                other.linkedAppInfo == linkedAppInfo) &&
            (identical(other.appApprovalState, appApprovalState) ||
                other.appApprovalState == appApprovalState) &&
            (identical(other.appIconUrl, appIconUrl) ||
                other.appIconUrl == appIconUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, appId, platform,
      displayName, linkedAppInfo, appApprovalState, appIconUrl);

  /// Create a copy of AppsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsDtoImplCopyWith<_$AppsDtoImpl> get copyWith =>
      __$$AppsDtoImplCopyWithImpl<_$AppsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppsDtoImplToJson(
      this,
    );
  }
}

abstract class _AppsDto extends AppsDto {
  const factory _AppsDto(
      {required final String name,
      required final String appId,
      required final String platform,
      required final String displayName,
      final LinkedAppInfoDto? linkedAppInfo,
      required final String appApprovalState,
      final String? appIconUrl}) = _$AppsDtoImpl;
  const _AppsDto._() : super._();

  factory _AppsDto.fromJson(Map<String, dynamic> json) = _$AppsDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get appId;
  @override
  String get platform;
  @override
  String get displayName;
  @override
  LinkedAppInfoDto? get linkedAppInfo;
  @override
  String get appApprovalState;
  @override
  String? get appIconUrl;

  /// Create a copy of AppsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsDtoImplCopyWith<_$AppsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedAppInfoDto _$LinkedAppInfoDtoFromJson(Map<String, dynamic> json) {
  return _LinkedAppInfoDto.fromJson(json);
}

/// @nodoc
mixin _$LinkedAppInfoDto {
  String get appStoreId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this LinkedAppInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkedAppInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkedAppInfoDtoCopyWith<LinkedAppInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedAppInfoDtoCopyWith<$Res> {
  factory $LinkedAppInfoDtoCopyWith(
          LinkedAppInfoDto value, $Res Function(LinkedAppInfoDto) then) =
      _$LinkedAppInfoDtoCopyWithImpl<$Res, LinkedAppInfoDto>;
  @useResult
  $Res call({String appStoreId, String displayName});
}

/// @nodoc
class _$LinkedAppInfoDtoCopyWithImpl<$Res, $Val extends LinkedAppInfoDto>
    implements $LinkedAppInfoDtoCopyWith<$Res> {
  _$LinkedAppInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkedAppInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStoreId = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      appStoreId: null == appStoreId
          ? _value.appStoreId
          : appStoreId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkedAppInfoDtoImplCopyWith<$Res>
    implements $LinkedAppInfoDtoCopyWith<$Res> {
  factory _$$LinkedAppInfoDtoImplCopyWith(_$LinkedAppInfoDtoImpl value,
          $Res Function(_$LinkedAppInfoDtoImpl) then) =
      __$$LinkedAppInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appStoreId, String displayName});
}

/// @nodoc
class __$$LinkedAppInfoDtoImplCopyWithImpl<$Res>
    extends _$LinkedAppInfoDtoCopyWithImpl<$Res, _$LinkedAppInfoDtoImpl>
    implements _$$LinkedAppInfoDtoImplCopyWith<$Res> {
  __$$LinkedAppInfoDtoImplCopyWithImpl(_$LinkedAppInfoDtoImpl _value,
      $Res Function(_$LinkedAppInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkedAppInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStoreId = null,
    Object? displayName = null,
  }) {
    return _then(_$LinkedAppInfoDtoImpl(
      appStoreId: null == appStoreId
          ? _value.appStoreId
          : appStoreId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkedAppInfoDtoImpl extends _LinkedAppInfoDto {
  const _$LinkedAppInfoDtoImpl(
      {required this.appStoreId, required this.displayName})
      : super._();

  factory _$LinkedAppInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkedAppInfoDtoImplFromJson(json);

  @override
  final String appStoreId;
  @override
  final String displayName;

  @override
  String toString() {
    return 'LinkedAppInfoDto(appStoreId: $appStoreId, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkedAppInfoDtoImpl &&
            (identical(other.appStoreId, appStoreId) ||
                other.appStoreId == appStoreId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appStoreId, displayName);

  /// Create a copy of LinkedAppInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkedAppInfoDtoImplCopyWith<_$LinkedAppInfoDtoImpl> get copyWith =>
      __$$LinkedAppInfoDtoImplCopyWithImpl<_$LinkedAppInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkedAppInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _LinkedAppInfoDto extends LinkedAppInfoDto {
  const factory _LinkedAppInfoDto(
      {required final String appStoreId,
      required final String displayName}) = _$LinkedAppInfoDtoImpl;
  const _LinkedAppInfoDto._() : super._();

  factory _LinkedAppInfoDto.fromJson(Map<String, dynamic> json) =
      _$LinkedAppInfoDtoImpl.fromJson;

  @override
  String get appStoreId;
  @override
  String get displayName;

  /// Create a copy of LinkedAppInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkedAppInfoDtoImplCopyWith<_$LinkedAppInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
