// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Apps {
  String get name => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  LinkedAppInfo? get linkedAppInfo => throw _privateConstructorUsedError;
  String get appApprovalState => throw _privateConstructorUsedError;
  String? get appIconUrl => throw _privateConstructorUsedError;

  /// Create a copy of Apps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppsCopyWith<Apps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsCopyWith<$Res> {
  factory $AppsCopyWith(Apps value, $Res Function(Apps) then) =
      _$AppsCopyWithImpl<$Res, Apps>;
  @useResult
  $Res call(
      {String name,
      String appId,
      String platform,
      String displayName,
      LinkedAppInfo? linkedAppInfo,
      String appApprovalState,
      String? appIconUrl});

  $LinkedAppInfoCopyWith<$Res>? get linkedAppInfo;
}

/// @nodoc
class _$AppsCopyWithImpl<$Res, $Val extends Apps>
    implements $AppsCopyWith<$Res> {
  _$AppsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Apps
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
              as LinkedAppInfo?,
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

  /// Create a copy of Apps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkedAppInfoCopyWith<$Res>? get linkedAppInfo {
    if (_value.linkedAppInfo == null) {
      return null;
    }

    return $LinkedAppInfoCopyWith<$Res>(_value.linkedAppInfo!, (value) {
      return _then(_value.copyWith(linkedAppInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppsImplCopyWith<$Res> implements $AppsCopyWith<$Res> {
  factory _$$AppsImplCopyWith(
          _$AppsImpl value, $Res Function(_$AppsImpl) then) =
      __$$AppsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String appId,
      String platform,
      String displayName,
      LinkedAppInfo? linkedAppInfo,
      String appApprovalState,
      String? appIconUrl});

  @override
  $LinkedAppInfoCopyWith<$Res>? get linkedAppInfo;
}

/// @nodoc
class __$$AppsImplCopyWithImpl<$Res>
    extends _$AppsCopyWithImpl<$Res, _$AppsImpl>
    implements _$$AppsImplCopyWith<$Res> {
  __$$AppsImplCopyWithImpl(_$AppsImpl _value, $Res Function(_$AppsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Apps
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
    return _then(_$AppsImpl(
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
              as LinkedAppInfo?,
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

class _$AppsImpl with DiagnosticableTreeMixin implements _Apps {
  const _$AppsImpl(
      {required this.name,
      required this.appId,
      required this.platform,
      required this.displayName,
      this.linkedAppInfo,
      required this.appApprovalState,
      this.appIconUrl});

  @override
  final String name;
  @override
  final String appId;
  @override
  final String platform;
  @override
  final String displayName;
  @override
  final LinkedAppInfo? linkedAppInfo;
  @override
  final String appApprovalState;
  @override
  final String? appIconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Apps(name: $name, appId: $appId, platform: $platform, displayName: $displayName, linkedAppInfo: $linkedAppInfo, appApprovalState: $appApprovalState, appIconUrl: $appIconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Apps'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('appId', appId))
      ..add(DiagnosticsProperty('platform', platform))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('linkedAppInfo', linkedAppInfo))
      ..add(DiagnosticsProperty('appApprovalState', appApprovalState))
      ..add(DiagnosticsProperty('appIconUrl', appIconUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, name, appId, platform,
      displayName, linkedAppInfo, appApprovalState, appIconUrl);

  /// Create a copy of Apps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsImplCopyWith<_$AppsImpl> get copyWith =>
      __$$AppsImplCopyWithImpl<_$AppsImpl>(this, _$identity);
}

abstract class _Apps implements Apps {
  const factory _Apps(
      {required final String name,
      required final String appId,
      required final String platform,
      required final String displayName,
      final LinkedAppInfo? linkedAppInfo,
      required final String appApprovalState,
      final String? appIconUrl}) = _$AppsImpl;

  @override
  String get name;
  @override
  String get appId;
  @override
  String get platform;
  @override
  String get displayName;
  @override
  LinkedAppInfo? get linkedAppInfo;
  @override
  String get appApprovalState;
  @override
  String? get appIconUrl;

  /// Create a copy of Apps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsImplCopyWith<_$AppsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LinkedAppInfo {
  String get appStoreId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Create a copy of LinkedAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkedAppInfoCopyWith<LinkedAppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedAppInfoCopyWith<$Res> {
  factory $LinkedAppInfoCopyWith(
          LinkedAppInfo value, $Res Function(LinkedAppInfo) then) =
      _$LinkedAppInfoCopyWithImpl<$Res, LinkedAppInfo>;
  @useResult
  $Res call({String appStoreId, String displayName});
}

/// @nodoc
class _$LinkedAppInfoCopyWithImpl<$Res, $Val extends LinkedAppInfo>
    implements $LinkedAppInfoCopyWith<$Res> {
  _$LinkedAppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkedAppInfo
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
abstract class _$$LinkedAppInfoImplCopyWith<$Res>
    implements $LinkedAppInfoCopyWith<$Res> {
  factory _$$LinkedAppInfoImplCopyWith(
          _$LinkedAppInfoImpl value, $Res Function(_$LinkedAppInfoImpl) then) =
      __$$LinkedAppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appStoreId, String displayName});
}

/// @nodoc
class __$$LinkedAppInfoImplCopyWithImpl<$Res>
    extends _$LinkedAppInfoCopyWithImpl<$Res, _$LinkedAppInfoImpl>
    implements _$$LinkedAppInfoImplCopyWith<$Res> {
  __$$LinkedAppInfoImplCopyWithImpl(
      _$LinkedAppInfoImpl _value, $Res Function(_$LinkedAppInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkedAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStoreId = null,
    Object? displayName = null,
  }) {
    return _then(_$LinkedAppInfoImpl(
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

class _$LinkedAppInfoImpl extends _LinkedAppInfo with DiagnosticableTreeMixin {
  const _$LinkedAppInfoImpl(
      {required this.appStoreId, required this.displayName})
      : super._();

  @override
  final String appStoreId;
  @override
  final String displayName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LinkedAppInfo(appStoreId: $appStoreId, displayName: $displayName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LinkedAppInfo'))
      ..add(DiagnosticsProperty('appStoreId', appStoreId))
      ..add(DiagnosticsProperty('displayName', displayName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkedAppInfoImpl &&
            (identical(other.appStoreId, appStoreId) ||
                other.appStoreId == appStoreId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appStoreId, displayName);

  /// Create a copy of LinkedAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkedAppInfoImplCopyWith<_$LinkedAppInfoImpl> get copyWith =>
      __$$LinkedAppInfoImplCopyWithImpl<_$LinkedAppInfoImpl>(this, _$identity);
}

abstract class _LinkedAppInfo extends LinkedAppInfo {
  const factory _LinkedAppInfo(
      {required final String appStoreId,
      required final String displayName}) = _$LinkedAppInfoImpl;
  const _LinkedAppInfo._() : super._();

  @override
  String get appStoreId;
  @override
  String get displayName;

  /// Create a copy of LinkedAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkedAppInfoImplCopyWith<_$LinkedAppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
