// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_unit_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdUnitMetrics {
  String get adUnitId => throw _privateConstructorUsedError;
  String get adUnitType => throw _privateConstructorUsedError;
  Metrics get metrics => throw _privateConstructorUsedError;

  /// Create a copy of AdUnitMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdUnitMetricsCopyWith<AdUnitMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdUnitMetricsCopyWith<$Res> {
  factory $AdUnitMetricsCopyWith(
          AdUnitMetrics value, $Res Function(AdUnitMetrics) then) =
      _$AdUnitMetricsCopyWithImpl<$Res, AdUnitMetrics>;
  @useResult
  $Res call({String adUnitId, String adUnitType, Metrics metrics});

  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class _$AdUnitMetricsCopyWithImpl<$Res, $Val extends AdUnitMetrics>
    implements $AdUnitMetricsCopyWith<$Res> {
  _$AdUnitMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdUnitMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? adUnitType = null,
    Object? metrics = null,
  }) {
    return _then(_value.copyWith(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitType: null == adUnitType
          ? _value.adUnitType
          : adUnitType // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ) as $Val);
  }

  /// Create a copy of AdUnitMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetricsCopyWith<$Res> get metrics {
    return $MetricsCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdUnitMetricsImplCopyWith<$Res>
    implements $AdUnitMetricsCopyWith<$Res> {
  factory _$$AdUnitMetricsImplCopyWith(
          _$AdUnitMetricsImpl value, $Res Function(_$AdUnitMetricsImpl) then) =
      __$$AdUnitMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String adUnitId, String adUnitType, Metrics metrics});

  @override
  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$AdUnitMetricsImplCopyWithImpl<$Res>
    extends _$AdUnitMetricsCopyWithImpl<$Res, _$AdUnitMetricsImpl>
    implements _$$AdUnitMetricsImplCopyWith<$Res> {
  __$$AdUnitMetricsImplCopyWithImpl(
      _$AdUnitMetricsImpl _value, $Res Function(_$AdUnitMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdUnitMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? adUnitType = null,
    Object? metrics = null,
  }) {
    return _then(_$AdUnitMetricsImpl(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      adUnitType: null == adUnitType
          ? _value.adUnitType
          : adUnitType // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ));
  }
}

/// @nodoc

class _$AdUnitMetricsImpl extends _AdUnitMetrics {
  const _$AdUnitMetricsImpl(
      {required this.adUnitId, required this.adUnitType, required this.metrics})
      : super._();

  @override
  final String adUnitId;
  @override
  final String adUnitType;
  @override
  final Metrics metrics;

  @override
  String toString() {
    return 'AdUnitMetrics(adUnitId: $adUnitId, adUnitType: $adUnitType, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdUnitMetricsImpl &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.adUnitType, adUnitType) ||
                other.adUnitType == adUnitType) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adUnitId, adUnitType, metrics);

  /// Create a copy of AdUnitMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdUnitMetricsImplCopyWith<_$AdUnitMetricsImpl> get copyWith =>
      __$$AdUnitMetricsImplCopyWithImpl<_$AdUnitMetricsImpl>(this, _$identity);
}

abstract class _AdUnitMetrics extends AdUnitMetrics {
  const factory _AdUnitMetrics(
      {required final String adUnitId,
      required final String adUnitType,
      required final Metrics metrics}) = _$AdUnitMetricsImpl;
  const _AdUnitMetrics._() : super._();

  @override
  String get adUnitId;
  @override
  String get adUnitType;
  @override
  Metrics get metrics;

  /// Create a copy of AdUnitMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdUnitMetricsImplCopyWith<_$AdUnitMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
