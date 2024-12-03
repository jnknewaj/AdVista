// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_metrics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryMetricsDto _$CountryMetricsDtoFromJson(Map<String, dynamic> json) {
  return _CountryMetricsDto.fromJson(json);
}

/// @nodoc
mixin _$CountryMetricsDto {
  String get country => throw _privateConstructorUsedError;
  Metricsdto get metrics => throw _privateConstructorUsedError;

  /// Serializes this CountryMetricsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryMetricsDtoCopyWith<CountryMetricsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryMetricsDtoCopyWith<$Res> {
  factory $CountryMetricsDtoCopyWith(
          CountryMetricsDto value, $Res Function(CountryMetricsDto) then) =
      _$CountryMetricsDtoCopyWithImpl<$Res, CountryMetricsDto>;
  @useResult
  $Res call({String country, Metricsdto metrics});

  $MetricsdtoCopyWith<$Res> get metrics;
}

/// @nodoc
class _$CountryMetricsDtoCopyWithImpl<$Res, $Val extends CountryMetricsDto>
    implements $CountryMetricsDtoCopyWith<$Res> {
  _$CountryMetricsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryMetricsDto
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
              as Metricsdto,
    ) as $Val);
  }

  /// Create a copy of CountryMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetricsdtoCopyWith<$Res> get metrics {
    return $MetricsdtoCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryMetricsDtoImplCopyWith<$Res>
    implements $CountryMetricsDtoCopyWith<$Res> {
  factory _$$CountryMetricsDtoImplCopyWith(_$CountryMetricsDtoImpl value,
          $Res Function(_$CountryMetricsDtoImpl) then) =
      __$$CountryMetricsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, Metricsdto metrics});

  @override
  $MetricsdtoCopyWith<$Res> get metrics;
}

/// @nodoc
class __$$CountryMetricsDtoImplCopyWithImpl<$Res>
    extends _$CountryMetricsDtoCopyWithImpl<$Res, _$CountryMetricsDtoImpl>
    implements _$$CountryMetricsDtoImplCopyWith<$Res> {
  __$$CountryMetricsDtoImplCopyWithImpl(_$CountryMetricsDtoImpl _value,
      $Res Function(_$CountryMetricsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? metrics = null,
  }) {
    return _then(_$CountryMetricsDtoImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metricsdto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryMetricsDtoImpl extends _CountryMetricsDto {
  const _$CountryMetricsDtoImpl({required this.country, required this.metrics})
      : super._();

  factory _$CountryMetricsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryMetricsDtoImplFromJson(json);

  @override
  final String country;
  @override
  final Metricsdto metrics;

  @override
  String toString() {
    return 'CountryMetricsDto(country: $country, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryMetricsDtoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, metrics);

  /// Create a copy of CountryMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryMetricsDtoImplCopyWith<_$CountryMetricsDtoImpl> get copyWith =>
      __$$CountryMetricsDtoImplCopyWithImpl<_$CountryMetricsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryMetricsDtoImplToJson(
      this,
    );
  }
}

abstract class _CountryMetricsDto extends CountryMetricsDto {
  const factory _CountryMetricsDto(
      {required final String country,
      required final Metricsdto metrics}) = _$CountryMetricsDtoImpl;
  const _CountryMetricsDto._() : super._();

  factory _CountryMetricsDto.fromJson(Map<String, dynamic> json) =
      _$CountryMetricsDtoImpl.fromJson;

  @override
  String get country;
  @override
  Metricsdto get metrics;

  /// Create a copy of CountryMetricsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryMetricsDtoImplCopyWith<_$CountryMetricsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
