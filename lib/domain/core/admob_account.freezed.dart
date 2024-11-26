// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admob_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdmobAccount {
  String get name => throw _privateConstructorUsedError;
  String get publisherId => throw _privateConstructorUsedError;
  String get reportingTimeZone => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  /// Create a copy of AdmobAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdmobAccountCopyWith<AdmobAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdmobAccountCopyWith<$Res> {
  factory $AdmobAccountCopyWith(
          AdmobAccount value, $Res Function(AdmobAccount) then) =
      _$AdmobAccountCopyWithImpl<$Res, AdmobAccount>;
  @useResult
  $Res call(
      {String name,
      String publisherId,
      String reportingTimeZone,
      String currencyCode});
}

/// @nodoc
class _$AdmobAccountCopyWithImpl<$Res, $Val extends AdmobAccount>
    implements $AdmobAccountCopyWith<$Res> {
  _$AdmobAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdmobAccount
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
abstract class _$$AdmobAccountImplCopyWith<$Res>
    implements $AdmobAccountCopyWith<$Res> {
  factory _$$AdmobAccountImplCopyWith(
          _$AdmobAccountImpl value, $Res Function(_$AdmobAccountImpl) then) =
      __$$AdmobAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String publisherId,
      String reportingTimeZone,
      String currencyCode});
}

/// @nodoc
class __$$AdmobAccountImplCopyWithImpl<$Res>
    extends _$AdmobAccountCopyWithImpl<$Res, _$AdmobAccountImpl>
    implements _$$AdmobAccountImplCopyWith<$Res> {
  __$$AdmobAccountImplCopyWithImpl(
      _$AdmobAccountImpl _value, $Res Function(_$AdmobAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdmobAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publisherId = null,
    Object? reportingTimeZone = null,
    Object? currencyCode = null,
  }) {
    return _then(_$AdmobAccountImpl(
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

class _$AdmobAccountImpl with DiagnosticableTreeMixin implements _AdmobAccount {
  const _$AdmobAccountImpl(
      {required this.name,
      required this.publisherId,
      required this.reportingTimeZone,
      required this.currencyCode});

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
    return 'AdmobAccount(name: $name, publisherId: $publisherId, reportingTimeZone: $reportingTimeZone, currencyCode: $currencyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdmobAccount'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('publisherId', publisherId))
      ..add(DiagnosticsProperty('reportingTimeZone', reportingTimeZone))
      ..add(DiagnosticsProperty('currencyCode', currencyCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdmobAccountImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId) &&
            (identical(other.reportingTimeZone, reportingTimeZone) ||
                other.reportingTimeZone == reportingTimeZone) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, publisherId, reportingTimeZone, currencyCode);

  /// Create a copy of AdmobAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdmobAccountImplCopyWith<_$AdmobAccountImpl> get copyWith =>
      __$$AdmobAccountImplCopyWithImpl<_$AdmobAccountImpl>(this, _$identity);
}

abstract class _AdmobAccount implements AdmobAccount {
  const factory _AdmobAccount(
      {required final String name,
      required final String publisherId,
      required final String reportingTimeZone,
      required final String currencyCode}) = _$AdmobAccountImpl;

  @override
  String get name;
  @override
  String get publisherId;
  @override
  String get reportingTimeZone;
  @override
  String get currencyCode;

  /// Create a copy of AdmobAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdmobAccountImplCopyWith<_$AdmobAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
