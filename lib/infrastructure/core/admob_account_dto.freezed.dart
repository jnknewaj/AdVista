// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admob_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdmobAccountDto _$AdmobAccountDtoFromJson(Map<String, dynamic> json) {
  return _AdmobAccountDto.fromJson(json);
}

/// @nodoc
mixin _$AdmobAccountDto {
  String get name => throw _privateConstructorUsedError;
  String get publisherId => throw _privateConstructorUsedError;
  String get reportingTimeZone => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this AdmobAccountDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdmobAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdmobAccountDtoCopyWith<AdmobAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdmobAccountDtoCopyWith<$Res> {
  factory $AdmobAccountDtoCopyWith(
          AdmobAccountDto value, $Res Function(AdmobAccountDto) then) =
      _$AdmobAccountDtoCopyWithImpl<$Res, AdmobAccountDto>;
  @useResult
  $Res call(
      {String name,
      String publisherId,
      String reportingTimeZone,
      String currencyCode});
}

/// @nodoc
class _$AdmobAccountDtoCopyWithImpl<$Res, $Val extends AdmobAccountDto>
    implements $AdmobAccountDtoCopyWith<$Res> {
  _$AdmobAccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdmobAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publisherId = null,
    Object? reportingTimeZone = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publisherId: null == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String,
      reportingTimeZone: null == reportingTimeZone
          ? _value.reportingTimeZone
          : reportingTimeZone // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdmobAccountDtoImplCopyWith<$Res>
    implements $AdmobAccountDtoCopyWith<$Res> {
  factory _$$AdmobAccountDtoImplCopyWith(_$AdmobAccountDtoImpl value,
          $Res Function(_$AdmobAccountDtoImpl) then) =
      __$$AdmobAccountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String publisherId,
      String reportingTimeZone,
      String currencyCode});
}

/// @nodoc
class __$$AdmobAccountDtoImplCopyWithImpl<$Res>
    extends _$AdmobAccountDtoCopyWithImpl<$Res, _$AdmobAccountDtoImpl>
    implements _$$AdmobAccountDtoImplCopyWith<$Res> {
  __$$AdmobAccountDtoImplCopyWithImpl(
      _$AdmobAccountDtoImpl _value, $Res Function(_$AdmobAccountDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdmobAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publisherId = null,
    Object? reportingTimeZone = null,
    Object? currencyCode = null,
  }) {
    return _then(_$AdmobAccountDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publisherId: null == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String,
      reportingTimeZone: null == reportingTimeZone
          ? _value.reportingTimeZone
          : reportingTimeZone // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdmobAccountDtoImpl extends _AdmobAccountDto
    with DiagnosticableTreeMixin {
  const _$AdmobAccountDtoImpl(
      {required this.name,
      required this.publisherId,
      required this.reportingTimeZone,
      required this.currencyCode})
      : super._();

  factory _$AdmobAccountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdmobAccountDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String publisherId;
  @override
  final String reportingTimeZone;
  @override
  final String currencyCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdmobAccountDto(name: $name, publisherId: $publisherId, reportingTimeZone: $reportingTimeZone, currencyCode: $currencyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdmobAccountDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('publisherId', publisherId))
      ..add(DiagnosticsProperty('reportingTimeZone', reportingTimeZone))
      ..add(DiagnosticsProperty('currencyCode', currencyCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdmobAccountDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId) &&
            (identical(other.reportingTimeZone, reportingTimeZone) ||
                other.reportingTimeZone == reportingTimeZone) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, publisherId, reportingTimeZone, currencyCode);

  /// Create a copy of AdmobAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdmobAccountDtoImplCopyWith<_$AdmobAccountDtoImpl> get copyWith =>
      __$$AdmobAccountDtoImplCopyWithImpl<_$AdmobAccountDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdmobAccountDtoImplToJson(
      this,
    );
  }
}

abstract class _AdmobAccountDto extends AdmobAccountDto {
  const factory _AdmobAccountDto(
      {required final String name,
      required final String publisherId,
      required final String reportingTimeZone,
      required final String currencyCode}) = _$AdmobAccountDtoImpl;
  const _AdmobAccountDto._() : super._();

  factory _AdmobAccountDto.fromJson(Map<String, dynamic> json) =
      _$AdmobAccountDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get publisherId;
  @override
  String get reportingTimeZone;
  @override
  String get currencyCode;

  /// Create a copy of AdmobAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdmobAccountDtoImplCopyWith<_$AdmobAccountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
