// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppsMetrics _$AppsMetricsFromJson(Map<String, dynamic> json) {
  return _AppsMetrics.fromJson(json);
}

/// @nodoc
mixin _$AppsMetrics {
  String get appValue => throw _privateConstructorUsedError; // app-id
  String get appDisplayLabel => throw _privateConstructorUsedError;
  Metrics get metrics => throw _privateConstructorUsedError;

  /// Serializes this AppsMetrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppsMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppsMetricsCopyWith<AppsMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppsMetricsCopyWith<$Res> {
  factory $AppsMetricsCopyWith(
          AppsMetrics value, $Res Function(AppsMetrics) then) =
      _$AppsMetricsCopyWithImpl<$Res, AppsMetrics>;
  @useResult
  $Res call({String appValue, String appDisplayLabel, Metrics metrics});

  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class _$AppsMetricsCopyWithImpl<$Res, $Val extends AppsMetrics>
    implements $AppsMetricsCopyWith<$Res> {
  _$AppsMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppsMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appValue = null,
    Object? appDisplayLabel = null,
    Object? metrics = null,
  }) {
    return _then(_value.copyWith(
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      appDisplayLabel: null == appDisplayLabel
          ? _value.appDisplayLabel
          : appDisplayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ) as $Val);
  }

  /// Create a copy of AppsMetrics
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
abstract class _$$AppsMetricsImplCopyWith<$Res>
    implements $AppsMetricsCopyWith<$Res> {
  factory _$$AppsMetricsImplCopyWith(
          _$AppsMetricsImpl value, $Res Function(_$AppsMetricsImpl) then) =
      __$$AppsMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appValue, String appDisplayLabel, Metrics metrics});

  @override
  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$AppsMetricsImplCopyWithImpl<$Res>
    extends _$AppsMetricsCopyWithImpl<$Res, _$AppsMetricsImpl>
    implements _$$AppsMetricsImplCopyWith<$Res> {
  __$$AppsMetricsImplCopyWithImpl(
      _$AppsMetricsImpl _value, $Res Function(_$AppsMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppsMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appValue = null,
    Object? appDisplayLabel = null,
    Object? metrics = null,
  }) {
    return _then(_$AppsMetricsImpl(
      appValue: null == appValue
          ? _value.appValue
          : appValue // ignore: cast_nullable_to_non_nullable
              as String,
      appDisplayLabel: null == appDisplayLabel
          ? _value.appDisplayLabel
          : appDisplayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppsMetricsImpl extends _AppsMetrics {
  const _$AppsMetricsImpl(
      {required this.appValue,
      required this.appDisplayLabel,
      required this.metrics})
      : super._();

  factory _$AppsMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppsMetricsImplFromJson(json);

  @override
  final String appValue;
// app-id
  @override
  final String appDisplayLabel;
  @override
  final Metrics metrics;

  @override
  String toString() {
    return 'AppsMetrics(appValue: $appValue, appDisplayLabel: $appDisplayLabel, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppsMetricsImpl &&
            (identical(other.appValue, appValue) ||
                other.appValue == appValue) &&
            (identical(other.appDisplayLabel, appDisplayLabel) ||
                other.appDisplayLabel == appDisplayLabel) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appValue, appDisplayLabel, metrics);

  /// Create a copy of AppsMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppsMetricsImplCopyWith<_$AppsMetricsImpl> get copyWith =>
      __$$AppsMetricsImplCopyWithImpl<_$AppsMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppsMetricsImplToJson(
      this,
    );
  }
}

abstract class _AppsMetrics extends AppsMetrics {
  const factory _AppsMetrics(
      {required final String appValue,
      required final String appDisplayLabel,
      required final Metrics metrics}) = _$AppsMetricsImpl;
  const _AppsMetrics._() : super._();

  factory _AppsMetrics.fromJson(Map<String, dynamic> json) =
      _$AppsMetricsImpl.fromJson;

  @override
  String get appValue; // app-id
  @override
  String get appDisplayLabel;
  @override
  Metrics get metrics;

  /// Create a copy of AppsMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppsMetricsImplCopyWith<_$AppsMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
