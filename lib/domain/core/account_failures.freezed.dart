// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountFailures {
  String get name => throw _privateConstructorUsedError;
  String get publisherId => throw _privateConstructorUsedError;
  String get reportingTimeZone => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountFailuresCopyWith<AccountFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFailuresCopyWith<$Res> {
  factory $AccountFailuresCopyWith(
          AccountFailures value, $Res Function(AccountFailures) then) =
      _$AccountFailuresCopyWithImpl<$Res, AccountFailures>;
  @useResult
  $Res call(
      {String name,
      String publisherId,
      String reportingTimeZone,
      String currencyCode});
}

/// @nodoc
class _$AccountFailuresCopyWithImpl<$Res, $Val extends AccountFailures>
    implements $AccountFailuresCopyWith<$Res> {
  _$AccountFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountFailures
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
abstract class _$$AccountFailuresImplCopyWith<$Res>
    implements $AccountFailuresCopyWith<$Res> {
  factory _$$AccountFailuresImplCopyWith(_$AccountFailuresImpl value,
          $Res Function(_$AccountFailuresImpl) then) =
      __$$AccountFailuresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String publisherId,
      String reportingTimeZone,
      String currencyCode});
}

/// @nodoc
class __$$AccountFailuresImplCopyWithImpl<$Res>
    extends _$AccountFailuresCopyWithImpl<$Res, _$AccountFailuresImpl>
    implements _$$AccountFailuresImplCopyWith<$Res> {
  __$$AccountFailuresImplCopyWithImpl(
      _$AccountFailuresImpl _value, $Res Function(_$AccountFailuresImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publisherId = null,
    Object? reportingTimeZone = null,
    Object? currencyCode = null,
  }) {
    return _then(_$AccountFailuresImpl(
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

class _$AccountFailuresImpl
    with DiagnosticableTreeMixin
    implements _AccountFailures {
  const _$AccountFailuresImpl(
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
    return 'AccountFailures(name: $name, publisherId: $publisherId, reportingTimeZone: $reportingTimeZone, currencyCode: $currencyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountFailures'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('publisherId', publisherId))
      ..add(DiagnosticsProperty('reportingTimeZone', reportingTimeZone))
      ..add(DiagnosticsProperty('currencyCode', currencyCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountFailuresImpl &&
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

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountFailuresImplCopyWith<_$AccountFailuresImpl> get copyWith =>
      __$$AccountFailuresImplCopyWithImpl<_$AccountFailuresImpl>(
          this, _$identity);
}

abstract class _AccountFailures implements AccountFailures {
  const factory _AccountFailures(
      {required final String name,
      required final String publisherId,
      required final String reportingTimeZone,
      required final String currencyCode}) = _$AccountFailuresImpl;

  @override
  String get name;
  @override
  String get publisherId;
  @override
  String get reportingTimeZone;
  @override
  String get currencyCode;

  /// Create a copy of AccountFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountFailuresImplCopyWith<_$AccountFailuresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
