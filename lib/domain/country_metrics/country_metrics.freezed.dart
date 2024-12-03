// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryMetrics {
  String get country => throw _privateConstructorUsedError;
  Metrics get metrics => throw _privateConstructorUsedError;

  /// Create a copy of CountryMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryMetricsCopyWith<CountryMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryMetricsCopyWith<$Res> {
  factory $CountryMetricsCopyWith(
          CountryMetrics value, $Res Function(CountryMetrics) then) =
      _$CountryMetricsCopyWithImpl<$Res, CountryMetrics>;
  @useResult
  $Res call({String country, Metrics metrics});

  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class _$CountryMetricsCopyWithImpl<$Res, $Val extends CountryMetrics>
    implements $CountryMetricsCopyWith<$Res> {
  _$CountryMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? metrics = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ) as $Val);
  }

  /// Create a copy of CountryMetrics
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
abstract class _$$CountryMetricsImplCopyWith<$Res>
    implements $CountryMetricsCopyWith<$Res> {
  factory _$$CountryMetricsImplCopyWith(_$CountryMetricsImpl value,
          $Res Function(_$CountryMetricsImpl) then) =
      __$$CountryMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, Metrics metrics});

  @override
  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$CountryMetricsImplCopyWithImpl<$Res>
    extends _$CountryMetricsCopyWithImpl<$Res, _$CountryMetricsImpl>
    implements _$$CountryMetricsImplCopyWith<$Res> {
  __$$CountryMetricsImplCopyWithImpl(
      _$CountryMetricsImpl _value, $Res Function(_$CountryMetricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? metrics = null,
  }) {
    return _then(_$CountryMetricsImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ));
  }
}

/// @nodoc

class _$CountryMetricsImpl extends _CountryMetrics {
  const _$CountryMetricsImpl({required this.country, required this.metrics})
      : super._();

  @override
  final String country;
  @override
  final Metrics metrics;

  @override
  String toString() {
    return 'CountryMetrics(country: $country, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryMetricsImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, metrics);

  /// Create a copy of CountryMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryMetricsImplCopyWith<_$CountryMetricsImpl> get copyWith =>
      __$$CountryMetricsImplCopyWithImpl<_$CountryMetricsImpl>(
          this, _$identity);
}

abstract class _CountryMetrics extends CountryMetrics {
  const factory _CountryMetrics(
      {required final String country,
      required final Metrics metrics}) = _$CountryMetricsImpl;
  const _CountryMetrics._() : super._();

  @override
  String get country;
  @override
  Metrics get metrics;

  /// Create a copy of CountryMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryMetricsImplCopyWith<_$CountryMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
